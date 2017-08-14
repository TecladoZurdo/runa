<?php
namespace elyte\OperacionesBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

use BD\DaoBundle\Entity\Camaras;
use BD\DaoBundle\Form\CamarasType;

class RegistroCamarasController extends Controller {
  /**
  *Metodo inicial del
  *@Route("/regCamaras",name="_regCamaras")
  */
  public function indexAction(){

  	$camaras = new Camaras();

  	$form = $this->createForm(CamarasType::class,$camaras);


    return $this->render("OperacionesBundle:Registro:camaras.html.twig", array('form'=>$form->createView()));
  }
}
