<?php

namespace BD\DaoBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class CamarasType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('ctTipo')->add('codigo')->add('modelo')->add('marca')->add('activo')->add('estado')->add('ubicacion')->add('nivel')->add('observacion')->add('cambioDomo')->add('funcionanMediaConverter')->add('funcionaPoe')->add('funcionaTransformador')->add('funcionaUps')->add('funcionaDirecto');
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'BD\DaoBundle\Entity\Camaras'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'bd_daobundle_camaras';
    }


}
