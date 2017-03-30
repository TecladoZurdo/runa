<?php

namespace BD\DaoBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Puertas
 *
 * @ORM\Table(name="puertas", indexes={@ORM\Index(name="IDX_5C1DB9E15CAB5C90", columns={"ct_tipo"})})
 * @ORM\Entity
 */
class Puertas
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="bigint", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="puertas_id_seq", allocationSize=1, initialValue=1)
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
