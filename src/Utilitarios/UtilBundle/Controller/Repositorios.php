<?php


namespace Utilitarios\UtilBundle\Controller;


/**
 * Clase para agurpar repositorios
 */
class Repositorios
{

  public static $empresa = "DaoBundle:Empresa";
  public static $cliente = "DaoBundle:Cliente";
  public static $tecnico = "DaoBundle:Tecnico";
  public static $catalogo = "DaoBundle:Catalogo";
  public static $camaras = "DaoBundle:Camaras";
  public static $puertas = "DaoBundle:Puertas";

  function __construct()
  {
    # code...
  }
}
