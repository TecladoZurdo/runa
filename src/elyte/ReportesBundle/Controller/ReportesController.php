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
     * @Route("/fechas",name="_reporteFecha")
     */
    public function fechaAction()
    {
      //-- inicializo el entity
       $em = $this->getDoctrine()->getManager();
       $repoOrdenTrabajo = $em->getRepository(Repositorios::$ordenTrabajo);
       //-- busco todas las ordenes de trabajo
       $ordenesTrabajo = $repoOrdenTrabajo->findAll();

       if ($ordenesTrabajo){
         //-- cabecera de la tabla
         $dtOrdenPago['header']=array("Número Ticket","Número Orden","Descripción","Cámaras","Puertas","Solución","Fecha Inicial","Fecha Final","Técnico","Cliente","Estado");
         //-- pide de la tabla
         $dtOrdenPago['footer']=array("Número Ticket","Número Orden","Descripción","Cámaras","Puertas","Solución","Fecha Inicial","Fecha Final","Técnico","Cliente","Estado");
         //-- campos que se mostraran en la orden de trabajo
         $dtOrdenPago['campos']=array("num_ticket","num_ord_trab","descripcion","listCamaras","listPuertas","solucion","fechaInicio","fechaFin","tecnico","cliente","estado");


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
            $fechaInicio = $value->getFechaInicio() == null ? 'Sin Fecha': $value->getFechaInicio()->format('Y-m-d H:i:s');
            $fechaFin = $value->getFechaTermino() == null ? 'Sin Fecha': $value->getFechaTermino()->format('Y-m-d H:i:s');
            $tecnico = $value->getTecnico() == null ? '': $value->getTecnico()->getNombres();
            $cliente = $value->getcliente() == null ? '' : $value->getcliente()->getNombre();
            $tableDatos[]=array(
          //    'id'=>$value->getId()
              'num_ticket'=>$value->getNumTicket(),'num_ord_trab'=>$numeroOrdenTrabajo
              ,'descripcion'=>$value->getDescripcion()
              ,'listCamaras'=>$listCamaras,'listPuertas'=>$listPuertas
              ,'solucion'=>$value->getSolucion(),
              'fechaInicio'=>$fechaInicio,
              'fechaFin'=>$fechaFin,
              'tecnico'=>$tecnico,
              'cliente'=>$cliente,
              "estado"=>($value->getEstado()==1)? 'Abierto':'Cerrado'
        );
         }

         $dtOrdenPago['body'] =$tableDatos;
       }else { //-- en caso de no tener ningun dato se envia en blanco
          $dtOrdenPago['header']=array();
          $dtOrdenPago['campos']=array();
          $dtOrdenPago['body'] =null;
          $dtOrdenPago['footer']=array();
       }

        return $this->render('ReportesBundle:Reportes:indexFechas.html.twig',array('dtTable'=>$dtOrdenPago));
    }

    /**
     * @Route("/puertas",name="_reportePuertas")
     */
    public function puertasAction()
    {
      //-- inicializo el entity
       $em = $this->getDoctrine()->getManager();
       $repoObjeto = $em->getRepository(Repositorios::$puertas);
       //-- busco todas las ordenes de trabajo
       $puertas = $repoObjeto->findAll();

       if ($puertas){
         //-- cabecera de la tabla
         $dtObjeto['header']=array("Código","Modelo","Estado");
         //-- pide de la tabla
         $dtObjeto['footer']=array("Código","Modelo","Estado");
         //-- campos que se mostraran en la orden de trabajo
         $dtObjeto['campos']=array("codigo","modelo","estado");


         //-- recorremos
         foreach ($puertas as $key => $value) {
           # code...
            //-- se arma los datos de la tabla
            $tableDatos[]=array(
              'codigo'=>$value->getCodigo()
              ,'modelo'=>$value->getModelo()
              ,'estado'=>$value->getEstado()
        );
         }

         $dtObjeto['body'] =$tableDatos;
       }else { //-- en caso de no tener ningun dato se envia en blanco
          $dtObjeto['header']=array();
          $dtObjeto['campos']=array();
          $dtObjeto['body'] =null;
          $dtObjeto['footer']=array();
       }

        return $this->render('ReportesBundle:Reportes:indexPuertas.html.twig',array('dtTable'=>$dtObjeto));
    }

    /**
     * @Route("/camaras",name="_reporteCamaras")
     */
    public function camarasAction()
    {
      //-- inicializo el entity
       $em = $this->getDoctrine()->getManager();
       $repoEntity = $em->getRepository(Repositorios::$camaras);
       //-- busco todas las camaras
       $camaras = $repoEntity->findAll();

       if ($camaras){
         //-- cabecera de la tabla
         $dtObjeto['header']=array("Código","Modelo","Ubicación","Nivel","Estado","Marca");
         //-- pide de la tabla
         $dtObjeto['footer']=array("Código","Modelo","Ubicación","Nivel","Estado","Marca");
         //-- campos que se mostraran en la orden de trabajo
         $dtObjeto['campos']=array("codigo","modelo","ubicacion","nivel","estado","marca");

         //-- recorremos
         foreach ($camaras as $key => $value) {
           # code...
           //-- se arma los datos de la tabla
           $tableDatos[]=array(
             'codigo'=>$value->getCodigo()
             ,'modelo'=>$value->getModelo()
             ,'ubicacion'=>$value->getUbicacion()
             ,'nivel'=>$value->getNivel()
             ,'estado'=>$value->getEstado()
             ,'marca'=>$value->getmarca()
           );
          }

         $dtObjeto['body'] =$tableDatos;
       }else { //-- en caso de no tener ningun dato se envia en blanco
          $dtObjeto['header']=array();
          $dtObjeto['campos']=array();
          $dtObjeto['body'] =null;
          $dtObjeto['footer']=array();
       }

        return $this->render('ReportesBundle:Reportes:indexCamaras.html.twig',array('dtTable'=>$dtObjeto));
    }

}
