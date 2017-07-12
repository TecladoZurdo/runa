<?php

namespace BD\DaoBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * CamarasOrdenTrabajo
 *
 * @ORM\Table(name="camaras_orden_trabajo", indexes={@ORM\Index(name="IDX_485DFB12F65F51BE", columns={"camaras_id"}), @ORM\Index(name="IDX_485DFB1292B24E62", columns={"orden_trabajo_id"})})
 * @ORM\Entity
 */
class CamarasOrdenTrabajo
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
     * @var boolean
     *
     * @ORM\Column(name="activo", type="boolean", nullable=true)
     */
    private $activo;

    /**
     * @var \Camaras
     *
     * @ORM\ManyToOne(targetEntity="Camaras")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="camaras_id", referencedColumnName="id")
     * })
     */
    private $camaras;

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
     * Set activo
     *
     * @param boolean $activo
     * @return CamarasOrdenTrabajo
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
     * Set camaras
     *
     * @param \BD\DaoBundle\Entity\Camaras $camaras
     * @return CamarasOrdenTrabajo
     */
    public function setCamaras(\BD\DaoBundle\Entity\Camaras $camaras = null)
    {
        $this->camaras = $camaras;

        return $this;
    }

    /**
     * Get camaras
     *
     * @return \BD\DaoBundle\Entity\Camaras 
     */
    public function getCamaras()
    {
        return $this->camaras;
    }

    /**
     * Set ordenTrabajo
     *
     * @param \BD\DaoBundle\Entity\OrdenTrabajo $ordenTrabajo
     * @return CamarasOrdenTrabajo
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
