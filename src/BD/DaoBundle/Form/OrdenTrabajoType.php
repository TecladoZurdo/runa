<?php

namespace BD\DaoBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;


use Utilitarios\UtilBundle\Controller\Repositorios;
use Utilitarios\UtilBundle\Controller\VarCatalogo;

class OrdenTrabajoType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
        ->add('numTicket')->add('numOrdTrab')
        ->add('descripcion',TextareaType::class)
        ->add('solucion',TextareaType::class)
        ->add('solucionTecnica',TextareaType::class)
        ->add('fechaIni',TextType::class,array('mapped'=>false,'data'=>date('Y-m-d H:i')))
    //     ->add('fechaInicio',DateTimeType::class,array(
    //       'placeholder' => array(
    //     'year' => 'Year', 'month' => 'Month', 'day' => 'Day',
    //     'hour' => 'Hour', 'minute' => 'Minute', 'second' => 'Second',
    // )
    //     ))
        //->add('fechaTermino')
        ->add('fechaFin',TextType::class,array('mapped'=>false))
        //->add('horaTermino')
        //->add('activo')

        //->add('fechaCreacion')
        ->add('cliente',EntityType::class,array(
          'label'=>'Cliente',
          'class'=>Repositorios::$cliente
          ,'query_builder' => function ($er){
            return $er->getClientesQueryBuilder();
            }
          ,'property' =>'nombre'
          ,'empty_value'=>'--seleccione--'
        ))
        ->add('empresa',EntityType::class,array('label'=>'Empresa'
            ,'class'=>Repositorios::$empresa
            ,'query_builder'=>function($er){
              return $er->getEmpresasQueryBuilder();
              }
            ,'property'=>'nombre'
            ,'empty_value'=>'--seleccione--')
            )
        ->add('ctSistema',EntityType::class,array(
          'label'=>'Sistema'
          ,'class' => Repositorios::$catalogo
          ,'query_builder' => function ($er){
            return $er->getCatalogoByIdQueryBuilder(VarCatalogo::$sistemas);
          }
          ,'property'=>'nombre'
          ,'empty_value'=>'--seleccione--'
          // ,'multiple'=>true
          // ,'attr'=>array('class'=>'ui dropdown')
        ))
        ->add('ctServicio',EntityType::class,array(
          'label'=>'Servicio'
          ,'class' => Repositorios::$catalogo
          ,'query_builder' => function ($er){
            return $er->getCatalogoByIdQueryBuilder(VarCatalogo::$servicio);
          }
          ,'property'=>'nombre'
          ,'empty_value'=>'--seleccione--'
        ))
        ->add('tecnico',EntityType::class,array(
          'label'=>'Técnico'
          ,'class'=>Repositorios::$tecnico
          ,'query_builder' => function ($er){
            return $er->getTecnicosQueryBuilder();
            }
          ,'property' => 'nombres'
          ,'empty_value' =>'--seleccione--'
        ))
        ->add('camaras',EntityType::class,array(
          'label'=>'Cámaras'
          ,'class'=>Repositorios::$camaras
          ,'query_builder' => function ($er){
            return $er->getCamarasQueryBuilder();
            }
          ,'property' => 'codigo'
          ,'empty_value' =>'--seleccione--'
          ,'mapped'=>false
          ,'multiple'=>true
          ,'attr'=>array('class'=>'ui fluid normal dropdown')
        ))
        ->add('puertas',EntityType::class,array(
          'label'=>'Puertas'
          ,'class'=>Repositorios::$puertas
          ,'query_builder' => function ($er){
            return $er->getPuertasQueryBuilder();
            }
          ,'property' => 'codigo'
          ,'empty_value' =>'--seleccione--'
          ,'mapped'=>false
          ,'multiple'=>true
          ,'attr'=>array('class'=>'ui fluid normal dropdown')
        ))
        //->add('detalleOrdenTrabajo')
        //->add('estado',ChoiceType::class,array('choices'=>array('1'=>'Cerrado','0'=>'Abierto')))
        ;
    }

    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'BD\DaoBundle\Entity\OrdenTrabajo',
            'required'=>false
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'bd_daobundle_ordentrabajo';
    }


}
