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

        $listCamaras = $dataForm['camaras'];

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
          $listPuertas = $dataForm['puertas'];
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
