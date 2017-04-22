<?php

namespace BD\DaoBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * PuertasOrdenTrabajo
 *
 * @ORM\Table(name="puertas_orden_trabajo", indexes={@ORM\Index(name="IDX_BC3C009692B24E62", columns={"orden_trabajo_id"}), @ORM\Index(name="IDX_BC3C0096986006D3", columns={"puertas_id"})})
 * @ORM\Entity
 */
class PuertasOrdenTrabajo
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="bigint", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="puertas_orden_trabajo_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

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
     * @var \Puertas
     *
     * @ORM\ManyToOne(targetEntity="Puertas")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="puertas_id", referencedColumnName="id")
     * })
     */
    private $puertas;



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
     * @return PuertasOrdenTrabajo
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
     * @return PuertasOrdenTrabajo
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

    /**
     * Set puertas
     *
     * @param \BD\DaoBundle\Entity\Puertas $puertas
     * @return PuertasOrdenTrabajo
     */
    public function setPuertas(\BD\DaoBundle\Entity\Puertas $puertas = null)
    {
        $this->puertas = $puertas;

        return $this;
    }

    /**
     * Get puertas
     *
     * @return \BD\DaoBundle\Entity\Puertas 
     */
    public function getPuertas()
    {
        return $this->puertas;
    }
}
