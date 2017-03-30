<?php

namespace BD\DaoBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * DetalleOrdenTrabajo
 *
 * @ORM\Table(name="detalle_orden_trabajo", indexes={@ORM\Index(name="IDX_9BF158CB92B24E62", columns={"orden_trabajo_id"})})
 * @ORM\Entity
 */
class DetalleOrdenTrabajo
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="bigint", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="detalle_orden_trabajo_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var integer
     *
     * @ORM\Column(name="cantidad", type="smallint", nullable=true)
     */
    private $cantidad;

    /**
     * @var string
     *
     * @ORM\Column(name="descripcion", type="string", length=50, nullable=true)
     */
    private $descripcion;

    /**
     * @var boolean
     *
     * @ORM\Column(name="activo", type="boolean", nullable=true)
     */
    private $activo;

    /**
     * @var \OrdenTrabajo
     *
     * @ORM\ManyToOne(targetEntity="OrdenTrabajo")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="orden_trabajo_id", referencedColumnName="id")
     * })
     */
    private $ordenTrabajo;



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
     * Set cantidad
     *
     * @param integer $cantidad
     * @return DetalleOrdenTrabajo
     */
    public function setCantidad($cantidad)
    {
        $this->cantidad = $cantidad;

        return $this;
    }

    /**
     * Get cantidad
     *
     * @return integer 
     */
    public function getCantidad()
    {
        return $this->cantidad;
    }

    /**
     * Set descripcion
     *
     * @param string $descripcion
     * @return DetalleOrdenTrabajo
     */
    public function setDescripcion($descripcion)
    {
        $this->descripcion = $descripcion;

        return $this;
    }

    /**
     * Get descripcion
     *
     * @return string 
     */
    public function getDescripcion()
    {
        return $this->descripcion;
    }

    /**
     * Set activo
     *
     * @param boolean $activo
     * @return DetalleOrdenTrabajo
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
     * Set ordenTrabajo
     *
     * @param \BD\DaoBundle\Entity\OrdenTrabajo $ordenTrabajo
     * @return DetalleOrdenTrabajo
     */
    public function setOrdenTrabajo(\BD\DaoBundle\Entity\OrdenTrabajo $ordenTrabajo = null)
    {
        $this->ordenTrabajo = $ordenTrabajo;

        return $this;
    }

    /**
     * Get ordenTrabajo
     *
     * @return \BD\DaoBundle\Entity\OrdenTrabajo 
     */
    public function getOrdenTrabajo()
    {
        return $this->ordenTrabajo;
    }
}
