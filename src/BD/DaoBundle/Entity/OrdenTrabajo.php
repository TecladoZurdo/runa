<?php

namespace BD\DaoBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * OrdenTrabajo
 *
 * @ORM\Table(name="orden_trabajo", indexes={@ORM\Index(name="IDX_4158A024DE734E51", columns={"cliente_id"}), @ORM\Index(name="IDX_4158A024521E1991", columns={"empresa_id"}), @ORM\Index(name="IDX_4158A024F4BDD0A9", columns={"ct_sistema"}), @ORM\Index(name="IDX_4158A0245E5CC7D3", columns={"ct_servicio"}), @ORM\Index(name="IDX_4158A024841DB1E7", columns={"tecnico_id"})})
 * @ORM\Entity
 */
class OrdenTrabajo
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="bigint", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="orden_trabajo_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var integer
     *
     * @ORM\Column(name="num_ticket", type="bigint", nullable=true)
     */
    private $numTicket;

    /**
     * @var integer
     *
     * @ORM\Column(name="num_ord_trab", type="bigint", nullable=true)
     */
    private $numOrdTrab;

    /**
     * @var string
     *
     * @ORM\Column(name="descripcion", type="string", length=500, nullable=true)
     */
    private $descripcion;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fecha_Inicio", type="datetime", nullable=true)
     */
    private $fechaInicio;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fecha_termino", type="datetime", nullable=true)
     */
    private $fechaTermino;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="Hora_Termino", type="time", nullable=true)
     */
    private $horaTermino;

    /**
     * @var boolean
     *
     * @ORM\Column(name="activo", type="boolean", nullable=true)
     */
    private $activo;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fecha_creacion", type="datetime", nullable=true)
     */
    private $fechaCreacion;

    /**
     * @var \Cliente
     *
     * @ORM\ManyToOne(targetEntity="Cliente")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="cliente_id", referencedColumnName="id")
     * })
     */
    private $cliente;

    /**
     * @var \Empresa
     *
     * @ORM\ManyToOne(targetEntity="Empresa")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="empresa_id", referencedColumnName="id")
     * })
     */
    private $empresa;

    /**
     * @var \Catalogo
     *
     * @ORM\ManyToOne(targetEntity="Catalogo")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="ct_sistema", referencedColumnName="id")
     * })
     */
    private $ctSistema;

    /**
     * @var \Catalogo
     *
     * @ORM\ManyToOne(targetEntity="Catalogo")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="ct_servicio", referencedColumnName="id")
     * })
     */
    private $ctServicio;

    /**
     * @var \Tecnico
     *
     * @ORM\ManyToOne(targetEntity="Tecnico")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="tecnico_id", referencedColumnName="id")
     * })
     */
    private $tecnico;



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
     * Set numTicket
     *
     * @param integer $numTicket
     * @return OrdenTrabajo
     */
    public function setNumTicket($numTicket)
    {
        $this->numTicket = $numTicket;

        return $this;
    }

    /**
     * Get numTicket
     *
     * @return integer 
     */
    public function getNumTicket()
    {
        return $this->numTicket;
    }

    /**
     * Set numOrdTrab
     *
     * @param integer $numOrdTrab
     * @return OrdenTrabajo
     */
    public function setNumOrdTrab($numOrdTrab)
    {
        $this->numOrdTrab = $numOrdTrab;

        return $this;
    }

    /**
     * Get numOrdTrab
     *
     * @return integer 
     */
    public function getNumOrdTrab()
    {
        return $this->numOrdTrab;
    }

    /**
     * Set descripcion
     *
     * @param string $descripcion
     * @return OrdenTrabajo
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
     * Set fechaInicio
     *
     * @param \DateTime $fechaInicio
     * @return OrdenTrabajo
     */
    public function setFechaInicio($fechaInicio)
    {
        $this->fechaInicio = $fechaInicio;

        return $this;
    }

    /**
     * Get fechaInicio
     *
     * @return \DateTime 
     */
    public function getFechaInicio()
    {
        return $this->fechaInicio;
    }

    /**
     * Set fechaTermino
     *
     * @param \DateTime $fechaTermino
     * @return OrdenTrabajo
     */
    public function setFechaTermino($fechaTermino)
    {
        $this->fechaTermino = $fechaTermino;

        return $this;
    }

    /**
     * Get fechaTermino
     *
     * @return \DateTime 
     */
    public function getFechaTermino()
    {
        return $this->fechaTermino;
    }

    /**
     * Set horaTermino
     *
     * @param \DateTime $horaTermino
     * @return OrdenTrabajo
     */
    public function setHoraTermino($horaTermino)
    {
        $this->horaTermino = $horaTermino;

        return $this;
    }

    /**
     * Get horaTermino
     *
     * @return \DateTime 
     */
    public function getHoraTermino()
    {
        return $this->horaTermino;
    }

    /**
     * Set activo
     *
     * @param boolean $activo
     * @return OrdenTrabajo
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
     * Set fechaCreacion
     *
     * @param \DateTime $fechaCreacion
     * @return OrdenTrabajo
     */
    public function setFechaCreacion($fechaCreacion)
    {
        $this->fechaCreacion = $fechaCreacion;

        return $this;
    }

    /**
     * Get fechaCreacion
     *
     * @return \DateTime 
     */
    public function getFechaCreacion()
    {
        return $this->fechaCreacion;
    }

    /**
     * Set cliente
     *
     * @param \BD\DaoBundle\Entity\Cliente $cliente
     * @return OrdenTrabajo
     */
    public function setCliente(\BD\DaoBundle\Entity\Cliente $cliente = null)
    {
        $this->cliente = $cliente;

        return $this;
    }

    /**
     * Get cliente
     *
     * @return \BD\DaoBundle\Entity\Cliente 
     */
    public function getCliente()
    {
        return $this->cliente;
    }

    /**
     * Set empresa
     *
     * @param \BD\DaoBundle\Entity\Empresa $empresa
     * @return OrdenTrabajo
     */
    public function setEmpresa(\BD\DaoBundle\Entity\Empresa $empresa = null)
    {
        $this->empresa = $empresa;

        return $this;
    }

    /**
     * Get empresa
     *
     * @return \BD\DaoBundle\Entity\Empresa 
     */
    public function getEmpresa()
    {
        return $this->empresa;
    }

    /**
     * Set ctSistema
     *
     * @param \BD\DaoBundle\Entity\Catalogo $ctSistema
     * @return OrdenTrabajo
     */
    public function setCtSistema(\BD\DaoBundle\Entity\Catalogo $ctSistema = null)
    {
        $this->ctSistema = $ctSistema;

        return $this;
    }

    /**
     * Get ctSistema
     *
     * @return \BD\DaoBundle\Entity\Catalogo 
     */
    public function getCtSistema()
    {
        return $this->ctSistema;
    }

    /**
     * Set ctServicio
     *
     * @param \BD\DaoBundle\Entity\Catalogo $ctServicio
     * @return OrdenTrabajo
     */
    public function setCtServicio(\BD\DaoBundle\Entity\Catalogo $ctServicio = null)
    {
        $this->ctServicio = $ctServicio;

        return $this;
    }

    /**
     * Get ctServicio
     *
     * @return \BD\DaoBundle\Entity\Catalogo 
     */
    public function getCtServicio()
    {
        return $this->ctServicio;
    }

    /**
     * Set tecnico
     *
     * @param \BD\DaoBundle\Entity\Tecnico $tecnico
     * @return OrdenTrabajo
     */
    public function setTecnico(\BD\DaoBundle\Entity\Tecnico $tecnico = null)
    {
        $this->tecnico = $tecnico;

        return $this;
    }

    /**
     * Get tecnico
     *
     * @return \BD\DaoBundle\Entity\Tecnico 
     */
    public function getTecnico()
    {
        return $this->tecnico;
    }
}
