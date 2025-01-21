<?php

namespace App\Controller;

use App\Entity\Entreprise;
use App\Repository\EntrepriseRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

final class EntrepriseController extends AbstractController
{
    #[Route('/entreprise', name: 'app_entreprise')]
    // public function index(EntityManagerInterface $entityManager): Response
    public function index(EntrepriseRepository $entrepriseRepository): Response
    {
        // $name = 'Elan Formation';
        // $tableau = ["valeur 1", "valeur 2", "valeur 3"];
        // $entreprises = $entityManager->getRepository(Entreprise::class)->findAll();
        // $entreprises = $entrepriseRepository->findAll();

        // equivalent SQL : SELECT * FROM entreprise WHERE ville = "Strasbourg" ORDER BY raisonSociale (ASC)
        $entreprises = $entrepriseRepository->findBy(["ville" => "Strasbourg"], ["raisonSociale" => "ASC"]);

        return $this->render('entreprise/index.html.twig', [
            'controller_name' => 'EntrepriseController',
            'entreprises' => $entreprises
            // 'name' => $name,
            // 'tableau' => $tableau
        ]);
    }
}
