<?php

namespace elyte\ReportesBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class ReportesController extends Controller
{
    /**
     * @Route("/",name="_reportes")
     */
    public function indexAction()
    {
        return $this->render('ReportesBundle:Reportes:index.html.twig');
    }
}
