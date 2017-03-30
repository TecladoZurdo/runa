<?php

namespace BD\DaoBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Camaras
 *
 * @ORM\Table(name="camaras", indexes={@ORM\Index(name="IDX_E43DB03D5CAB5C90", columns={"ct_tipo"})})
 * @ORM\Entity
 */
class Camaras
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="bigint", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="camaras_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="codigo", type="string", nullable=true)
     */
    private $codigo;

    /**
     * @var string
     *
     * @ORM\Column(name="modelo", type="string", nullable=true)
     */
    private $modelo;

    /**
     * @var string
     *
     * @ORM\Column(name="marca", type="string", nullable=true)
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
     * @ORM\Column(name="estado", type="string", nullable=true)
     */
    private $estado;

    /**
     * @var \Catalogo
     *
     * @ORM\ManyToOne(targetEntity="Catalogo")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="ct_tipo", referencedColumnName="id")
     * })
     */
    private $ctTipo;



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
     * Set ctTipo
     *
     * @param \BD\DaoBundle\Entity\Catalogo $ctTipo
     * @return Camaras
     */
    public function setCtTipo(\BD\DaoBundle\Entity\Catalogo $ctTipo = null)
    {
        $this->ctTipo = $ctTipo;

        return $this;
    }

    /**
     * Get ctTipo
     *
     * @return \BD\DaoBundle\Entity\Catalogo 
     */
    public function getCtTipo()
    {
        return $this->ctTipo;
    }
}
