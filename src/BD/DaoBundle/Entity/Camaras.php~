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


}
