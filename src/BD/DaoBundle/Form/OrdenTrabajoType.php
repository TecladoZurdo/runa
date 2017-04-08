<?php

namespace BD\DaoBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

use Utilitarios\UtilBundle\Controller\Repositorios;

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
        //->add('fechaInicio')->add('fechaTermino')
        //->add('horaTermino')->add('activo')->add('fechaCreacion')
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
        //->add('ctSistema')->add('ctServicio')
        ->add('tecnico',EntityType::class,array(
          'label'=>'Técnico'
          ,'class'=>Repositorios::$tecnico
          ,'query_builder' => function ($er){
            return $er->getTecnicosQueryBuilder();
            }
          ,'property' => 'nombres'
          ,'empty_value' =>'--seleccione--'
        ))
        //->add('detalleOrdenTrabajo')
        ;
    }

    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'BD\DaoBundle\Entity\OrdenTrabajo'
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