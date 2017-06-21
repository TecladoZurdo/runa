<?php

namespace BD\DaoBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Catalogo
 *
 * @ORM\Table(name="catalogo")
 * @ORM\Entity(repositoryClass="BD\DaoBundle\Entity\Repository\CatalogoRepository")
 */
class Catalogo
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
     * @var string
     *
     * @ORM\Column(name="nombre", type="text", length=8, nullable=true)
     */
    private $nombre;

    /**
     * @var integer
     *
     * @ORM\Column(name="catalogo_id", type="bigint", nullable=true)
     */
    private $catalogo_id;

    /**
     * @var \Catalogo
     *
     * @ORM\ManyToOne(targetEntity="Catalogo")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="catalogo_id", referencedColumnName="id")
     * })
     */
    private $catalogo;

    /**
     * @var integer
     *
     * @ORM\Column(name="orden", type="smallint", nullable=true)
     */
    private $orden;

    /**
     * @var integer
     *
     * @ORM\Column(name="valor", type="integer", nullable=true)
     */
    private $valor;

    /**
     * @var boolean
     *
     * @ORM\Column(name="activo", type="boolean", nullable=true)
     */
    private $activo;



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
     * Set nombre
     *
     * @param string $nombre
     * @return Catalogo
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    /**
     * Get nombre
     *
     * @return string
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Set catalogoId
     *
     * @param integer $catalogoId
     * @return Catalogo
     */
    public function setCatalogoId($catalogo_id)
    {
        $this->catalogo_id = $catalogo_id;

        return $this;
    }

    /**
     * Get catalogoId
     *
     * @return integer
     */
    public function getCatalogo_id()
    {
        return $this->catalogo_id;
    }

    /**
     * Set orden
     *
     * @param integer $orden
     * @return Catalogo
     */
    public function setOrden($orden)
    {
        $this->orden = $orden;

        return $this;
    }

    /**
     * Get orden
     *
     * @return integer
     */
    public function getOrden()
    {
        return $this->orden;
    }

    /**
     * Set valor
     *
     * @param integer $valor
     * @return Catalogo
     */
    public function setValor($valor)
    {
        $this->valor = $valor;

        return $this;
    }

    /**
     * Get valor
     *
     * @return integer
     */
    public function getValor()
    {
        return $this->valor;
    }

    /**
     * Set activo
     *
     * @param boolean $activo
     * @return Catalogo
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
     * Get catalogo_id
     *
     * @return integer 
     */
    public function getCatalogoId()
    {
        return $this->catalogo_id;
    }

    /**
     * Set catalogo
     *
     * @param \BD\DaoBundle\Entity\Catalogo $catalogo
     * @return Catalogo
     */
    public function setCatalogo(\BD\DaoBundle\Entity\Catalogo $catalogo = null)
    {
        $this->catalogo = $catalogo;

        return $this;
    }

    /**
     * Get catalogo
     *
     * @return \BD\DaoBundle\Entity\Catalogo 
     */
    public function getCatalogo()
    {
        return $this->catalogo;
    }
}
