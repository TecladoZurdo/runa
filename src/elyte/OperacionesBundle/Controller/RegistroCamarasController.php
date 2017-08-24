<?php
namespace elyte\OperacionesBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;

use Utilitarios\UtilBundle\Controller\Repositorios;
use BD\DaoBundle\Entity\Camaras;
use BD\DaoBundle\Form\CamarasType;

class RegistroCamarasController extends Controller {

  /**
  *Metodo inicial del
  *@Route("/regCamaras",name="_regCamaras")
  */
  public function camaraAction(){

  	//$camaras = new Camaras();
  	//$form = $this->createForm(CamarasType::class,$camaras);
    //return $this->render("OperacionesBundle:Registro:camaras.html.twig", array('form'=>$form->createView()));
    return $this->render("OperacionesBundle:Registro:camaras.html.twig");
  }

  /**
  *Metodo que dado un codigo retorna el historial de camaras activas e inactivas
  *@Route("/getCamara/{codigo}",name="_getCamara",defaults={"codigo"=null})
  */
  public function getCamaraAction($codigo){
	  $em = $this->getDoctrine()->getManager();
	  $repositorio = $em->getRepository(Repositorios::$camaras);
	  $list = $repositorio->findBy(array('codigo'=>$codigo));
	  if ($list){
	  	foreach ($list as $key => $value) {
	  		# code...
	  		$output[] = array('codigo'=>$value->getId(), 'modelo'=>$value->getCodigo(), 'observacion'=>$value->getobservacion(),'action'=>true,"_data"=>array('id'=>$value->getId()));
			//$output[] = array('id'=>$value->getId());
	  	}
	  	
	  }else {
	  	$output[]=array('codigo'=>null, 'modelo'=>null, 'observacion'=>null,'action'=>null);
	  }
	  $camara["data"] = $output;
	  
  	return new JsonResponse($camara);
  }

}
