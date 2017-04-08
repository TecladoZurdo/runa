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

  function __construct()
  {
    # code...
  }
}
