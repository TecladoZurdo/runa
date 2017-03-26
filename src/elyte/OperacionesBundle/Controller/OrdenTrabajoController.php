<?php

namespace elyte\OperacionesBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class OrdenTrabajoController extends Controller
{
    /**
     * @Route("/")
     */
    public function indexAction()
    {
        return $this->render('OperacionesBundle:OT:index.html.twig');
    }
}
