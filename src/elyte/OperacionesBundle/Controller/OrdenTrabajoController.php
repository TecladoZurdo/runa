<?php

namespace elyte\OperacionesBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

use BD\DaoBundle\Entity\OrdenTrabajo;

use BD\DaoBundle\Form\OrdenTrabajoType;

class OrdenTrabajoController extends Controller
{
    /**
     * @Route("/")
     */
    public function indexAction()
    {
    	$ordenTrabajo = new OrdenTrabajo();

    	$form = $this->createForm(OrdenTrabajoType::class,$ordenTrabajo);

        return $this->render('OperacionesBundle:OT:index.html.twig',
        	array('form'=>$form->createView()));
    }
}
