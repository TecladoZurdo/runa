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
	  		if ($value->getFechaCreacion()== null){
	  			$fechaCreacion=null;
	  		}else {
	  			$fechaCreacion=$value->getFechaCreacion()->format('Y-m-d H:i:s');
	  		}
	  		$output[] = array('codigo'=>$value->getId(), 'modelo'=>$value->getCodigo(), 'observacion'=>$value->getobservacion(),'fechaRegistro'=>$fechaCreacion,'action'=>$value->getActivo(),"_data"=>array('id'=>$value->getId()));
			//$output[] = array('id'=>$value->getId());
	  	}
	  	
	  }else {
	  	$output[]=array('codigo'=>null, 'modelo'=>null, 'observacion'=>null,'fechaRegistro'=>null,'action'=>null);
	  }
	  $camara["data"] = $output;
	  
  	return new JsonResponse($camara);
  }

  /**
  *Metodo de registro de camaras
  *@Route("/addCamara/{id}",name="_addCamara",defaults={"id"=null})
  */
  public function addCamara($id){
  	$em = $this->getDoctrine()->getManager();
  	$repositorio = $em->getRepository(Repositorios::$camaras);
  	$list =$repositorio->findOneBy(array('id'=>$id));
  	if (!$list){ // error este dato debe existir
  		return $this->render();
  	}

  	$camara = new Camaras();

  	$form = $this->createForm(CamarasType::class, $camara,array('action' => $this->generateUrl('_saveCamara')));

  	return $this->render("OperacionesBundle:Registro:addCamara.html.twig", array('form'=>$form->createView(),'codigo'=>$list->getCodigo()));
  }

  /**
  *Metodo de guardado
  *@Route("saveCamara",name="_saveCamara")
  */
  public function saveCamara(Request $request){
  	$camara = new Camaras();
  	$form = $this->createForm(CamarasType::class,$camara,array('action' => $this->generateUrl('_saveCamara')));
  	$form->handleRequest($request);
  	if ($form->isSubmitted() && $form->isValid()){
  		$dataForm = $this->getRequest()->get($form->getName());
  		$datacodigo =  $this->getRequest()->get("codigo");
  		//print_r($dataForm);
  		//die();
  		$em = $this->getDoctrine()->getManager();
  		$repositorio = $em->getRepository(Repositorios::$camaras);
  		$camaraByCodeActivo = $repositorio->findOneBy(array('codigo'=>$datacodigo,'activo'=>true));
  		if (!$camaraByCodeActivo){
  			return $this->render("");
  		}
  		//-- ponemos en estado inactivo al anterior codigo 
  		$camaraByCodeActivo->setActivo(false);

  		$camara->setFechaCreacion(new \DateTime());
		$camara->setCodigo($datacodigo);
		$camara->setCtTipo(1);
		$camara->setActivo(true);

  		$em->persist($camaraByCodeActivo);
  		$em->persist($camara);
  		$em->flush();
  		 return $this->redirectToRoute("_regCamaras");
  	}else {

  	}

  	return $this->render("OperacionesBundle:Registro:addCamara.html.twig", array('form'=>$form->createView(),'codigo'=>$datacodigo));
  }
}
