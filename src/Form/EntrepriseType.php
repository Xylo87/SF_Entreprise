<?php

namespace App\Form;

use App\Entity\Entreprise;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;

class EntrepriseType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('raisonSociale', TextType::class, [
                'attr' => [
                    'class' => 'form-control'
                ]
            ])
            ->add('dateCrea', DateType::class, [
                'widget' => 'single_text', 
                'attr' => [
                    'class' => 'form-control'
                ],
                'label' => 'Date de création'
            ])
            ->add('adresse', TextType::class, [
                'attr' => [
                    'class' => 'form-control'
                ]
            ])
            ->add('cp', TextType::class, [
                'attr' => [
                    'class' => 'form-control'
                ],
                'label' => 'Code postal'
            ])
            ->add('ville', TextType::class, [
                'attr' => [
                    'class' => 'form-control'
                ]
            ])
            ->add('valider', SubmitType::class, [
                'attr' => [
                    'class' => 'btn btn-success'
                ]
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Entreprise::class,
        ]);
    }
}
