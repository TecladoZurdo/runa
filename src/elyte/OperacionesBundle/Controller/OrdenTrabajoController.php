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
        //-- inicio del orm
        $em = $this->getDoctrine()->getManager();
        //-- formateo de fechas a un formato legible
        //printf(\Datetime::createFromFormat('Y-m-d H:i',$dataForm['fechaIni']));
        //die();
        $ordenTrabajo->setFechaInicio(\Datetime::createFromFormat('Y-m-d H:i:s.u',$dataForm['fechaIni']));
        $ordenTrabajo->setFechaTermino(\Datetime::createFromFormat('Y-m-d H:i:s.u',$dataForm['fechaFin']));
        $ordenTrabajo->setFechaCreacion(\Datetime::createFromFormat('Y-m-d H:i:s.u',$dataForm['fechaFin']));

        //$ordenTrabajo->setFechaInicio(new \DateTime("now"));
        // $ordenTrabajo->setFechaTermino(new \DateTime("now"));
        // $ordenTrabajo->setFechaCreacion(new \DateTime("now"));
        $ordenTrabajo->setActivo(true);
        //-- se envia a guardar en la base
        $em->persist($ordenTrabajo);

        if (@$dataForm['camaras']){
          $listCamaras = $dataForm['camaras'];
        }else {
          $listCamaras=null;
        }


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
          if (@$dataForm['puertas']){
            $listPuertas = $dataForm['puertas'];
          }else {
            $listPuertas = null;
          }

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

        $em->flush();
        return $this->redirectToRoute("_registroOk");
      }else {

      }
        return $this->render('OperacionesBundle:OT:index.html.twig',
        	array('form'=>$form->createView()));
    }

    /**
    * @Route("/registro",name="_registroOk")
    */
    public function registrOkAction(){
      return $this->render("OperacionesBundle:OT:registroOk.html.twig");
    }
}
