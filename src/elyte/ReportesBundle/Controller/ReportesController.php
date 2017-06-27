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
      //-- inicializo el entity
       $em = $this->getDoctrine()->getManager();
       $repoOrdenTrabajo = $em->getRepository(Repositorios::$ordenTrabajo);
       //-- busco todas las ordenes de trabajo
       $ordenesTrabajo = $repoOrdenTrabajo->findAll();
       if ($ordenesTrabajo){
         //-- cabecera de la tabla
         $dtOrdenPago['header']=array("Numero Ticket","Numero Orden","Descripcion","Camaras","Puertas","Solucion","Fecha Final","Tecnico","Cliente","Accion");
         //-- pide de la tabla
         $dtOrdenPago['footer']=array("Numero Ticket","Numero Orden","Descripcion","Camaras","Puertas","Solucion","Fecha Final","Tecnico","Cliente","Acccion");
         //-- campos que se mostraran en la orden de trabajo
         $dtOrdenPago['campos']=array("num_ticket","num_ord_trab","descripcion","listCamaras","listPuertas","solucion","fechaFin","tecnico","cliente","accion");


         $repoPuertas=$em->getRepository(Repositorios::$puertasOrdenTrabajo);
         $repoCamaras=$em->getRepository(Repositorios::$camarasOrdenTrabajo);
         //-- recorremos
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
            //-- se arma los datos de la tabla
            $tableDatos[]=array('num_ticket'=>$value->getNumTicket(),'num_ord_trab'=>$value->getNumOrdTrab(),'descripcion'=>$value->getDescripcion()
          ,'listCamaras'=>$listCamaras,'listPuertas'=>$listPuertas,'solucion'=>$value->getSolucion(),
          'fechaFin'=>$value->getFechaTermino()->format('Y-m-d H:i:s'),'tecnico'=>$value->getTecnico()->getNombres(),'cliente'=>$value->getcliente()->getNombre(),"accion"=>"");
         }

         $dtOrdenPago['body'] =$tableDatos;
       }else { //-- en caso de no tener ningun dato se envia en blanco
          $dtOrdenPago['header']=array();
          $dtOrdenPago['campos']=array();
          $dtOrdenPago['body'] =null;
          $dtOrdenPago['footer']=array();
       }

        return $this->render('ReportesBundle:Reportes:index.html.twig',array('dtTable'=>$dtOrdenPago));
    }
}
