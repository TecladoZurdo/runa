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
         $dtOrdenPago['header']=array("id","Número Ticket","Número Orden","Descripción","Cámaras","Puertas","Solución","Fecha Final","Técnico","Cliente","Estado","Acción");
         //-- pide de la tabla
         $dtOrdenPago['footer']=array("id","Número Ticket","Número Orden","Descripción","Cámaras","Puertas","Solución","Fecha Final","Técnico","Cliente","Estado","Accción");
         //-- campos que se mostraran en la orden de trabajo
         $dtOrdenPago['campos']=array("id","num_ticket","num_ord_trab","descripcion","listCamaras","listPuertas","solucion","fechaFin","tecnico","cliente","estado","accion");


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
            $numeroOrdenTrabajo = $value->getNumOrdTrab() == null ? 'Sin Número':$value->getNumOrdTrab();
            $fechaFin = $value->getFechaTermino() == null ? 'Sin Fecha': $value->getFechaTermino()->format('Y-m-d H:i:s');
            $tecnico = $value->getTecnico() == null ? '': $value->getTecnico()->getNombres();
            $cliente = $value->getcliente() == null ? '' : $value->getcliente()->getNombre();
            $tableDatos[]=array(
              'id'=>$value->getId()
              ,'num_ticket'=>$value->getNumTicket(),'num_ord_trab'=>$numeroOrdenTrabajo
              ,'descripcion'=>$value->getDescripcion()
              ,'listCamaras'=>$listCamaras,'listPuertas'=>$listPuertas
              ,'solucion'=>$value->getSolucion(),
              'fechaFin'=>$fechaFin,
              'tecnico'=>$tecnico,
              'cliente'=>$cliente,
              "estado"=>($value->getEstado()==1)? 'Abierto':'Cerrado',"accion"=>""
        );
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

    /**
     * @Route("/puertas",name="_reportePuertas")
     */
    public function puertasAction()
    {
      //-- inicializo el entity
       $em = $this->getDoctrine()->getManager();
       $repoOrdenTrabajo = $em->getRepository(Repositorios::$ordenTrabajo);
       //-- busco todas las ordenes de trabajo
       $ordenesTrabajo = $repoOrdenTrabajo->findAll();

       if ($ordenesTrabajo){
         //-- cabecera de la tabla
         $dtOrdenPago['header']=array("id","Número Ticket","Número Orden","Descripción","Cámaras","Puertas","Solución","Fecha Final","Técnico","Cliente","Estado");
         //-- pide de la tabla
         $dtOrdenPago['footer']=array("id","Número Ticket","Número Orden","Descripción","Cámaras","Puertas","Solución","Fecha Final","Técnico","Cliente","Estado");
         //-- campos que se mostraran en la orden de trabajo
         $dtOrdenPago['campos']=array("id","num_ticket","num_ord_trab","descripcion","listCamaras","listPuertas","solucion","fechaFin","tecnico","cliente","estado");


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
            //printf($value->getId());
            //-- se arma los datos de la tabla
            $tableDatos[]=array(
              'id'=>$value->getId()
              ,'num_ticket'=>$value->getNumTicket(),'num_ord_trab'=>$value->getNumOrdTrab()
              ,'descripcion'=>$value->getDescripcion()
              ,'listCamaras'=>$listCamaras,'listPuertas'=>$listPuertas
              ,'solucion'=>$value->getSolucion(),
              'fechaFin'=>$value->getFechaTermino()->format('Y-m-d H:i:s'),'tecnico'=>$value->getTecnico()->getNombres(),
              'cliente'=>$value->getcliente()->getNombre(),"estado"=>($value->getEstado()==1)? 'Abierto':'Cerrado'
        );
         }

         $dtOrdenPago['body'] =$tableDatos;
       }else { //-- en caso de no tener ningun dato se envia en blanco
          $dtOrdenPago['header']=array();
          $dtOrdenPago['campos']=array();
          $dtOrdenPago['body'] =null;
          $dtOrdenPago['footer']=array();
       }

        return $this->render('ReportesBundle:Reportes:indexPuertas.html.twig',array('dtTable'=>$dtOrdenPago));
    }

    /**
     * @Route("/camaras",name="_reporteCamaras")
     */
    public function camarasAction()
    {
      //-- inicializo el entity
       $em = $this->getDoctrine()->getManager();
       $repoOrdenTrabajo = $em->getRepository(Repositorios::$ordenTrabajo);
       //-- busco todas las ordenes de trabajo
       $ordenesTrabajo = $repoOrdenTrabajo->findAll();

       if ($ordenesTrabajo){
         //-- cabecera de la tabla
         $dtOrdenPago['header']=array("id","Número Ticket","Número Orden","Descripción","Cámaras","Puertas","Solución","Fecha Final","Técnico","Cliente","Estado");
         //-- pide de la tabla
         $dtOrdenPago['footer']=array("id","Número Ticket","Número Orden","Descripción","Cámaras","Puertas","Solución","Fecha Final","Técnico","Cliente","Estado");
         //-- campos que se mostraran en la orden de trabajo
         $dtOrdenPago['campos']=array("id","num_ticket","num_ord_trab","descripcion","listCamaras","listPuertas","solucion","fechaFin","tecnico","cliente","estado");


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
            //printf($value->getId());
            //-- se arma los datos de la tabla
            $tableDatos[]=array(
              'id'=>$value->getId()
              ,'num_ticket'=>$value->getNumTicket(),'num_ord_trab'=>$value->getNumOrdTrab()
              ,'descripcion'=>$value->getDescripcion()
              ,'listCamaras'=>$listCamaras,'listPuertas'=>$listPuertas
              ,'solucion'=>$value->getSolucion(),
              'fechaFin'=>$value->getFechaTermino()->format('Y-m-d H:i:s'),'tecnico'=>$value->getTecnico()->getNombres(),
              'cliente'=>$value->getcliente()->getNombre(),"estado"=>($value->getEstado()==1)? 'Abierto':'Cerrado'
        );
         }

         $dtOrdenPago['body'] =$tableDatos;
       }else { //-- en caso de no tener ningun dato se envia en blanco
          $dtOrdenPago['header']=array();
          $dtOrdenPago['campos']=array();
          $dtOrdenPago['body'] =null;
          $dtOrdenPago['footer']=array();
       }

        return $this->render('ReportesBundle:Reportes:indexPuertas.html.twig',array('dtTable'=>$dtOrdenPago));
    }

}
