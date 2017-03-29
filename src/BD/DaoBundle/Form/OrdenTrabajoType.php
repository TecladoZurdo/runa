<?php

namespace BD\DaoBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class OrdenTrabajoType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('numTicket')->add('numOrdTrab')->add('descripcion')->add('fechaInicio')->add('fechaTermino')
        ->add('horaTermino')->add('activo')->add('fechaCreacion')
        //->add('cliente')->add('empresa')->add('ctSistema')->add('ctServicio')->add('tecnico')->add('detalleOrdenTrabajo')
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
