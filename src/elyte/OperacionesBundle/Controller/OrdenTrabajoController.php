<?php

namespace elyte\OperacionesBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

//use BD\DaoBundle\Entity;
use BD\DaoBundle\Entity\OrdenTrabajo;
use BD\DaoBundle\Entity\CamarasOrdenTrabajo;
use BD\DaoBundle\Entity\PuertasOrdenTrabajo;

use BD\DaoBundle\Form\OrdenTrabajoType;
use BD\DaoBundle\Form\OrdenTrabajoEditType;
use Utilitarios\UtilBundle\Controller\Repositorios;

class OrdenTrabajoController extends Controller
{
    /**
     * Metodo inicial del aplicativo
     * @Route("/", name="_inicio")
     */
    public function indexAction(Request $request)
    {
      //-- inicializacion de la clase orden de trabajo
    	$ordenTrabajo = new OrdenTrabajo();
      //-- creacion del formulario
    	$form = $this->createForm(OrdenTrabajoType::class,$ordenTrabajo);
      //-- recibe los datos en caso de respuesta del frontend
      $form->handleRequest($request);
      //-- control si el formulario fue enviado con datos correctos
      if ($form->isSubmitted() && $form->isValid()){
        //-- obtencion de datos de los campos del formulario
        $dataForm = $this->getRequest()->get($form->getName());
        $estadoForm = $this->getRequest()->get('estado');

        //-- inicio del orm
        $em = $this->getDoctrine()->getManager();
        //-- estado de la orden de trabajo abierto 1 cerrado 0
        $ordenTrabajo->setEstado($estadoForm);
        //-- formateo de fechas a un formato legible
        if ($estadoForm == 1){
        $ordenTrabajo->setFechaInicio(\Datetime::createFromFormat('Y-m-d H:i',$dataForm['fechaIni']));
      }else {
        $ordenTrabajo->setFechaInicio(\Datetime::createFromFormat('Y-m-d H:i',$dataForm['fechaIni']));
        $ordenTrabajo->setFechaTermino(\Datetime::createFromFormat('Y-m-d H:i',$dataForm['fechaFin']));
      }


        //-- se defin si esta activo en el sistema
        $ordenTrabajo->setActivo(true);

        //-- se envia a guardar en la base
        $em->persist($ordenTrabajo);


        //-- construye una lsita de camaras
        if (@$dataForm['camaras']){
          $listCamaras = $dataForm['camaras'];
        }else {
          $listCamaras=null;
        }

        //-- si existe camaras definidas se procede a recorrer e
        //-- insertar en la tabla
        if ($listCamaras){
          $camaraRepo = $em->getRepository(Repositorios::$camaras);
          foreach ($listCamaras as $key => $value) {
            # code...
              $camara= $camaraRepo->findOneBy(array('id'=>$value));
              $camarasOrdenTrabajo = new CamarasOrdenTrabajo();

              $camarasOrdenTrabajo->setCamaras($camara);
              $camarasOrdenTrabajo->setOrdenTrabajo($ordenTrabajo);
              $camarasOrdenTrabajo->setActivo(true);
              $em->persist($camarasOrdenTrabajo);
          }
        }
        //-- se construye una lista de puertas
          if (@$dataForm['puertas']){
            $listPuertas = $dataForm['puertas'];
          }else {
            $listPuertas = null;
          }
          //-- si existe puertas definidas se procede a recorre e
          //-- insertar en la tabla
          if ($listPuertas){
            $puertasRepo = $em->getRepository(Repositorios::$puertas);
            foreach ($listPuertas as $key => $value) {
              # code...
                $puertas= $puertasRepo->findOneBy(array('id'=>$value));

                $puertasOrdenTrabajo = new PuertasOrdenTrabajo();
                $puertasOrdenTrabajo->setPuertas($puertas);
                $puertasOrdenTrabajo->setOrdenTrabajo($ordenTrabajo);
                $puertasOrdenTrabajo->setActivo(true);
                $em->persist($puertasOrdenTrabajo);
            }

        }
        //-- se hace el commit y procede a liberar la memoria
        $em->flush();
        //-- se redirige a la pantalla de resultado correcto
        return $this->redirectToRoute("_registroOk");
      }else {
        //-- aqui datos adicionales antes de ingresar al formulario
      }
      //-- si recien inicia o tiene errores el formulario se muestra la
      //-- pantalla inicial
        return $this->render('OperacionesBundle:OT:index.html.twig',
        	array('form'=>$form->createView()));
    }

    /**
    * proceso ok
    * @Route("/registro",name="_registroOk")
    */
    public function registrOkAction(){
      return $this->render("OperacionesBundle:OT:registroOk.html.twig");
    }

    /**
    *Proceso para edicion
    *@Route("/editar/{id}",name="_editar",defaults={"id"=0})
    */
    public function editarAction(Request $request,$id){
      //-- proceso de recuperacion de datos de la orden de trabajo
      //--- y presentacion para la edicion de datos

      $em = $this->getDoctrine()->getManager();

      $OTrepositorio = $em->getRepository(Repositorios::$ordenTrabajo);

      $ordenTrabajoItem = $OTrepositorio->findOneBy(array("id"=>$id));

      //-- inicializacion de la clase orden de trabajo
      $ordenTrabajo = new OrdenTrabajo();
      $ordenTrabajo = $ordenTrabajoItem;
      $numeroTicket =$ordenTrabajoItem->getNumTicket();
      //-- creacion del formulario
      $form = $this->createForm(OrdenTrabajoEditType::class,$ordenTrabajo);
      //-- recibe los datos en caso de respuesta del frontend
      $form->handleRequest($request);
      if ($form->isSubmitted() && $form->isValid()){

        //-- obtencion de datos de los campos del formulario
        $dataForm = $this->getRequest()->get($form->getName());
        $estadoForm = $this->getRequest()->get('cerrado');
        $ordenTrabajo->setNumTicket($numeroTicket);
        if ($estadoForm == 0){
          $ordenTrabajo->setEstado(0);
        }
        //-- se envia a guardar en la base
        $em->persist($ordenTrabajo);

        $em->flush();
        //-- se redirige a la pantalla de resultado correcto
        return $this->redirectToRoute("_registroOk");

      }else {

      }
      return $this->render("OperacionesBundle:OT:editar.html.twig",array('form'=>$form->createView()));
    }
}
