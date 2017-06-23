<?php

namespace BD\DaoBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * OrdenTrabajo
 *
 * @ORM\Table(name="orden_trabajo")
 * @ORM\Entity
 */
class OrdenTrabajo
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
     * @var integer
     *
     * @ORM\Column(name="empresa_id", type="bigint", nullable=true)
     */
    private $empresaId;

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
     * @var string
     *
     * @ORM\Column(name="descripcion", type="string", length=500, nullable=true)
     */
    private $descripcion;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fecha_inicio", type="datetime", nullable=true)
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
     * @ORM\Column(name="hora_termino", type="time", nullable=true)
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
     * @ORM\Column(name="fecha_creacion", type="datetime", nullable=false)
     */
    private $fechaCreacion;

    /**
     * @var integer
     *
     * @ORM\Column(name="cliente_id", type="bigint", nullable=true)
     */
    private $clienteId;

    /**
    *@var \Cliente
    *
    *@ORM\ManyToOne(targetEntity="Cliente")
    *@ORM\JoinColumns ({
    *    @ORM\JoinColumn(name="cliente_id", referencedColumnName="id")
    * })
    */
    private $cliente;

    /**
    *@var \Empresa
    *
    *@ORM\ManyToOne(targetEntity="Empresa")
    *@ORM\JoinColumns ({
    *    @ORM\JoinColumn(name="empresa_id", referencedColumnName="id")
    * })
    */
    private $empresa;

    /**
     * @var integer
     *
     * @ORM\Column(name="tecnico_id", type="bigint", nullable=true)
     */
    private $tecnicoId;

    /**
    *@var \Tecnico
    *
    *@ORM\ManyToOne(targetEntity="Tecnico")
    *@ORM\JoinColumns ({
    *    @ORM\JoinColumn(name="tecnico_id", referencedColumnName="id")
    * })
    */
    private $tecnico;

    /**
     * @var integer
     *
     * @ORM\Column(name="detalle_orden_trabajo_id", type="bigint", nullable=true)
     */
    private $detalleOrdenTrabajoId;

    /**
     * @var string
     *
     * @ORM\Column(name="solucion", type="string", length=1500, nullable=true)
     */
    private $solucion;

    /**
     * @var string
     *
     * @ORM\Column(name="solucion_tecnica", type="string", length=1500, nullable=true)
     */
    private $solucionTecnica;

  

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
     * Set empresaId
     *
     * @param integer $empresaId
     * @return OrdenTrabajo
     */
    public function setEmpresaId($empresaId)
    {
        $this->empresaId = $empresaId;

        return $this;
    }

    /**
     * Get empresaId
     *
     * @return integer
     */
    public function getEmpresaId()
    {
        return $this->empresaId;
    }

    /**
     * Set ctSistema
     *
     * @param integer $ctSistema
     * @return OrdenTrabajo
     */
    public function setCtSistema($ctSistema)
    {
        $this->ctSistema = $ctSistema;

        return $this;
    }

    /**
     * Get ctSistema
     *
     * @return integer
     */
    public function getCtSistema()
    {
        return $this->ctSistema;
    }

    /**
     * Set ctServicio
     *
     * @param integer $ctServicio
     * @return OrdenTrabajo
     */
    public function setCtServicio($ctServicio)
    {
        $this->ctServicio = $ctServicio;

        return $this;
    }

    /**
     * Get ctServicio
     *
     * @return integer
     */
    public function getCtServicio()
    {
        return $this->ctServicio;
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
     * Set clienteId
     *
     * @param integer $clienteId
     * @return OrdenTrabajo
     */
    public function setClienteId($clienteId)
    {
        $this->clienteId = $clienteId;

        return $this;
    }

    /**
     * Get clienteId
     *
     * @return integer
     */
    public function getClienteId()
    {
        return $this->clienteId;
    }

    /**
     * Set tecnicoId
     *
     * @param integer $tecnicoId
     * @return OrdenTrabajo
     */
    public function setTecnicoId($tecnicoId)
    {
        $this->tecnicoId = $tecnicoId;

        return $this;
    }

    /**
     * Get tecnicoId
     *
     * @return integer
     */
    public function getTecnicoId()
    {
        return $this->tecnicoId;
    }

    /**
     * Set detalleOrdenTrabajoId
     *
     * @param integer $detalleOrdenTrabajoId
     * @return OrdenTrabajo
     */
    public function setDetalleOrdenTrabajoId($detalleOrdenTrabajoId)
    {
        $this->detalleOrdenTrabajoId = $detalleOrdenTrabajoId;

        return $this;
    }

    /**
     * Get detalleOrdenTrabajoId
     *
     * @return integer
     */
    public function getDetalleOrdenTrabajoId()
    {
        return $this->detalleOrdenTrabajoId;
    }

    /**
     * Set solucion
     *
     * @param string $solucion
     * @return OrdenTrabajo
     */
    public function setSolucion($solucion)
    {
        $this->solucion = $solucion;

        return $this;
    }

    /**
     * Get solucion
     *
     * @return string
     */
    public function getSolucion()
    {
        return $this->solucion;
    }

    /**
     * Set solucionTecnica
     *
     * @param string $solucionTecnica
     * @return OrdenTrabajo
     */
    public function setSolucionTecnica($solucionTecnica)
    {
        $this->solucionTecnica = $solucionTecnica;

        return $this;
    }

    /**
     * Get solucionTecnica
     *
     * @return string
     */
    public function getSolucionTecnica()
    {
        return $this->solucionTecnica;
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
