<?php

namespace elyte\OperacionesBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

use BD\DaoBundle\Entity\OrdenTrabajo;

use BD\DaoBundle\Form\OrdenTrabajoType;

class OrdenTrabajoController extends Controller
{
    /**
     * @Route("/", name="_inicio")
     */
    public function indexAction(Request $request)
    {
    	$ordenTrabajo = new OrdenTrabajo();

    	$form = $this->createForm(OrdenTrabajoType::class,$ordenTrabajo);

      $form->handleRequest($request);
      if ($form->isSubmitted() && $form->isValid()){
        $dataForm = $this->getRequest()->get($form->getName());
        $em = $this->getDoctrine()->getManager();
        $ordenTrabajo->setFechaInicio(\Datetime::createFromFormat('Y-m-d H:i',$dataForm['fechaIni']));
        $ordenTrabajo->setFechaTermino(\Datetime::createFromFormat('Y-m-d H:i',$dataForm['fechaFin']));
        $em->persist($ordenTrabajo);
        $em->flush($ordenTrabajo);
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
