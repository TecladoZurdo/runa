<?php
namespace elyte\OperacionesBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class RegistroCamarasController extends Controller {
  /**
  *Metodo inicial del
  *@Route("/regCamaras",name="_regCamaras")
  */
  public function indexAction(){
    return $this->render("OperacionesBundle:Registro:camaras.html.twig");
  }
}
