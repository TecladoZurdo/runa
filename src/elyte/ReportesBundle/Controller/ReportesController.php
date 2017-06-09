<?php

namespace elyte\ReportesBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

use Utilitarios\UtilBundle\Controller\Repositorios;

class ReportesController extends Controller
{
    /**
     * @Route("/",name="_reportes")
     */
    public function indexAction()
    {
       $em = $this->getDoctrine()->getManager();
       $repoOrdenTrabajo = $em->getRepository(Repositorios::$ordenTrabajo);
       $ordenesTrabajo = $repoOrdenTrabajo->findAll();
       if ($ordenesTrabajo){
         $dtOrdenPago['header']=array("Numero Ticket","Numero Orden","Descripcion","Camaras","Puertas","Solucion","Fecha Final","Tecnico","Accion");
         $dtOrdenPago['footer']=array("Numero Ticket","Numero Orden","Descripcion","Camaras","Puertas","Solucion","Fecha Final","Tecnico","Acccion");
         $dtOrdenPago['campos']=array("num_ticket","num_ord_trab","descripcion","listCamaras","listPuertas","solucion","fechaFin","tecnico","accion");

         $repoPuertas=$em->getRepository(Repositorios::$puertasOrdenTrabajo);
         $repoCamaras=$em->getRepository(Repositorios::$camarasOrdenTrabajo);
         foreach ($ordenesTrabajo as $key => $value) {
           # code...
            $camaras = $repoCamaras->findBy(array('ordenTrabajo'=>$value));
            $listCamaras=null;
            if($camaras){
              foreach ($camaras as $key => $valueC) {
                # code...
                $listCamaras.=$valueC->getCamaras()->getCodigo().' ';
              }

            }

            $puertas = $repoPuertas->findBy(array('ordenTrabajo'=>$value));
            $listPuertas=null;
            if($puertas){
              foreach ($puertas as $key => $valueP) {
                # code...
                $listPuertas.=$valueP->getPuertas()->getCodigo().' ';
              }
            }

            $tableDatos[]=array('num_ticket'=>$value->getNumTicket(),'num_ord_trab'=>$value->getNumOrdTrab(),'descripcion'=>$value->getDescripcion()
          ,'listCamaras'=>$listCamaras,'listPuertas'=>$listPuertas,'solucion'=>$value->getSolucion(),
          'fechaFin'=>$value->getFechaTermino()->format('Y-m-d H:i'),'tecnico'=>$value->getTecnico()->getNombres(),"accion"=>"<a href='#'>Editar</a>");
         }

         $dtOrdenPago['body'] =$tableDatos;
       }else {
          $dtOrdenPago['header']=array();
          $dtOrdenPago['campos']=array();
          $dtOrdenPago['body'] =null;
          $dtOrdenPago['footer']=array();
       }

        return $this->render('ReportesBundle:Reportes:index.html.twig',array('dtTable'=>$dtOrdenPago));
    }
}
