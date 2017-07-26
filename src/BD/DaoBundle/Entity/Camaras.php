<?php

namespace BD\DaoBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Camaras
 *
 * @ORM\Table(name="camaras")
 * @ORM\Entity(repositoryClass="BD\DaoBundle\Entity\Repository\CamarasRepository")
 */
class Camaras
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="bigint", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var integer
     *
     * @ORM\Column(name="ct_tipo", type="bigint", nullable=true)
     */
    private $ctTipo;

    /**
     * @var string
     *
     * @ORM\Column(name="codigo", type="text", length=8, nullable=true)
     */
    private $codigo;

    /**
     * @var string
     *
     * @ORM\Column(name="modelo", type="text", length=8, nullable=true)
     */
    private $modelo;

    /**
     * @var string
     *
     * @ORM\Column(name="marca", type="text", length=8, nullable=true)
     */
    private $marca;

    /**
     * @var boolean
     *
     * @ORM\Column(name="activo", type="boolean", nullable=true)
     */
    private $activo;

    /**
     * @var string
     *
     * @ORM\Column(name="estado", type="text", length=8, nullable=true)
     */
    private $estado;

    /**
     * @var string
     *
     * @ORM\Column(name="ubicacion", type="text", length=8, nullable=true)
     */
    private $ubicacion;

    /**
     * @var string
     *
     * @ORM\Column(name="nivel", type="text", length=250, nullable=true)
     */
    private $nivel;

    /**
     * @var string
     *
     * @ORM\Column(name="observacion", type="text", length=250, nullable=true)
     */
    private $observacion;

    /**
     * @var boolean
     *
     * @ORM\Column(name="cambio_domo", type="boolean", nullable=true)
     */
    private $cambioDomo;

    /**
     * @var boolean
     *
     * @ORM\Column(name="funcionan_media_converter", type="boolean", nullable=true)
     */
    private $funcionanMediaConverter;

    /**
     * @var boolean
     *
     * @ORM\Column(name="funciona_poe", type="boolean", nullable=true)
     */
    private $funcionaPoe;

    /**
     * @var boolean
     *
     * @ORM\Column(name="funciona_transformador", type="boolean", nullable=true)
     */
    private $funcionaTransformador;

    /**
     * @var boolean
     *
     * @ORM\Column(name="funciona_ups", type="boolean", nullable=true)
     */
    private $funcionaUps;

    /**
     * @var boolean
     *
     * @ORM\Column(name="funciona_directo", type="boolean", nullable=true)
     */
    private $funcionaDirecto;

    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set ctTipo
     *
     * @param integer $ctTipo
     * @return Camaras
     */
    public function setCtTipo($ctTipo)
    {
        $this->ctTipo = $ctTipo;

        return $this;
    }

    /**
     * Get ctTipo
     *
     * @return integer
     */
    public function getCtTipo()
    {
        return $this->ctTipo;
    }

    /**
     * Set codigo
     *
     * @param string $codigo
     * @return Camaras
     */
    public function setCodigo($codigo)
    {
        $this->codigo = $codigo;

        return $this;
    }

    /**
     * Get codigo
     *
     * @return string
     */
    public function getCodigo()
    {
        return $this->codigo;
    }

    /**
     * Set modelo
     *
     * @param string $modelo
     * @return Camaras
     */
    public function setModelo($modelo)
    {
        $this->modelo = $modelo;

        return $this;
    }

    /**
     * Get modelo
     *
     * @return string
     */
    public function getModelo()
    {
        return $this->modelo;
    }

    /**
     * Set marca
     *
     * @param string $marca
     * @return Camaras
     */
    public function setMarca($marca)
    {
        $this->marca = $marca;

        return $this;
    }

    /**
     * Get marca
     *
     * @return string
     */
    public function getMarca()
    {
        return $this->marca;
    }

    /**
     * Set activo
     *
     * @param boolean $activo
     * @return Camaras
     */
    public function setActivo($activo)
    {
        $this->activo = $activo;

        return $this;
    }

    /**
     * Get activo
     *
     * @return boolean
     */
    public function getActivo()
    {
        return $this->activo;
    }

    /**
     * Set estado
     *
     * @param string $estado
     * @return Camaras
     */
    public function setEstado($estado)
    {
        $this->estado = $estado;

        return $this;
    }

    /**
     * Get estado
     *
     * @return string
     */
    public function getEstado()
    {
        return $this->estado;
    }

    /**
     * Set ubicacion
     *
     * @param string $ubicacion
     * @return Camaras
     */
    public function setUbicacion($ubicacion)
    {
        $this->ubicacion = $ubicacion;

        return $this;
    }

    /**
     * Get ubicacion
     *
     * @return string
     */
    public function getUbicacion()
    {
        return $this->ubicacion;
    }

    /**
     * Set nivel
     *
     * @param string $nivel
     * @return Camaras
     */
    public function setNivel($nivel)
    {
        $this->nivel = $nivel;

        return $this;
    }

    /**
     * Get nivel
     *
     * @return string
     */
    public function getNivel()
    {
        return $this->nivel;
    }

    /**
     * Set cambioDomo
     *
     * @param boolean $cambioDomo
     * @return Camaras
     */
    public function setCambioDomo($cambioDomo)
    {
        $this->cambioDomo = $cambioDomo;

        return $this;
    }

    /**
     * Get cambioDomo
     *
     * @return boolean
     */
    public function getCambioDomo()
    {
        return $this->cambioDomo;
    }

    /**
     * Set funcionanMediaConverter
     *
     * @param boolean $funcionanMediaConverter
     * @return Camaras
     */
    public function setFuncionanMediaConverter($funcionanMediaConverter)
    {
        $this->funcionanMediaConverter = $funcionanMediaConverter;

        return $this;
    }

    /**
     * Get funcionanMediaConverter
     *
     * @return boolean
     */
    public function getFuncionanMediaConverter()
    {
        return $this->funcionanMediaConverter;
    }

    /**
     * Set funcionaPoe
     *
     * @param boolean $funcionaPoe
     * @return Camaras
     */
    public function setFuncionaPoe($funcionaPoe)
    {
        $this->funcionaPoe = $funcionaPoe;

        return $this;
    }

    /**
     * Get funcionaPoe
     *
     * @return boolean
     */
    public function getFuncionaPoe()
    {
        return $this->funcionaPoe;
    }

    /**
     * Set funcionaTransformador
     *
     * @param boolean $funcionaTransformador
     * @return Camaras
     */
    public function setFuncionaTransformador($funcionaTransformador)
    {
        $this->funcionaTransformador = $funcionaTransformador;

        return $this;
    }

    /**
     * Get funcionaTransformador
     *
     * @return boolean
     */
    public function getFuncionaTransformador()
    {
        return $this->funcionaTransformador;
    }

    /**
     * Set funcionaUps
     *
     * @param boolean $funcionaUps
     * @return Camaras
     */
    public function setFuncionaUps($funcionaUps)
    {
        $this->funcionaUps = $funcionaUps;

        return $this;
    }

    /**
     * Get funcionaUps
     *
     * @return boolean
     */
    public function getFuncionaUps()
    {
        return $this->funcionaUps;
    }

    /**
     * Set funcionaDirecto
     *
     * @param boolean $funcionaDirecto
     * @return Camaras
     */
    public function setFuncionaDirecto($funcionaDirecto)
    {
        $this->funcionaDirecto = $funcionaDirecto;

        return $this;
    }

    /**
     * Get funcionaDirecto
     *
     * @return boolean
     */
    public function getFuncionaDirecto()
    {
        return $this->funcionaDirecto;
    }

    /**
     * Set observacion
     *
     * @param string $observacion
     * @return Camaras
     */
    public function setObservacion($observacion)
    {
        $this->observacion = $observacion;

        return $this;
    }

    /**
     * Get observacion
     *
     * @return string
     */
    public function getObservacion()
    {
        return $this->observacion;
    }
}
