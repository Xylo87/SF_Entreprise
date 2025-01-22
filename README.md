# 🎵🏬 Exercice Symfony -> affichage de détails d'entreprises et de leurs employés depuis une base de données MySQL

## 1. Description

Ce projet est un premier exercice pratique de programmation web utilisant le framework PHP **Symfony**.
Il permet l'affichage d'une liste d'entreprises, d'une liste globale d'employés et de détails sur chacun (noms, adresses, dates, villes etc.).
Les entités **PHP** sont liées les unes aux autres, ce qui permet par **chaînage de méthodes** d'afficher les relations adéquates et de créer des liens entre les différentes vues **Twig**.
L'application inclus un système de formulaires pour l'ajout et la modification d'une entreprise ou d'un salarié.
Les différentes entités ont été migré en base de données **MySQL**, et les informations affichées sont appelées depuis celle-ci.
Un minimum de style a été ajouté à l'application via des classes du framework ***BootStrap**.

---

## 2. Fonctionnalités

- Navigation entres les différentes **vues** (liste des entreprises, liste des employés, ajout) à l'aide d'une **Navbar** sommaire en **template** (``` base.html.twig ```)

- Affichage de détails sur chaque entreprise/salarié et liens entre les entités.

- Fonctions d'ajout, d'édition et de suppression d'entreprise ou d'employé. 
L'ajout et l'édition sont gérés via des formulaires créés avec **Symfony** (via la commande ``` symfony console make:form ```). Chacune de ces opérations est retranscrite en base de données.

---

## 3. Installation 

1. Clonez ce projet depuis GitHub :
   ```
   bash
   git clone https://github.com/Xylo87/SF_Entreprise.git
   cd SF_Entreprise
   ```
2. Assurez-vous que PHP est installé sur votre machine en exécutant la commande suivante :
   ```
   bash
   php --version
   ```
   Veiller à utiliser une version 8.2 minimum de PHP, sinon procéder à son téléchargement via [ce lien](https://www.php.net/downloads.php)

3. Installer un logiciel type "Laragon" pour disposer d'un environnement qui permet d'exécuter un script PHP :

- Télécharger Laragon [ici](https://laragon.org/download/)
- Démarrer Laragon
- Enregistrer le "Repo" dans le dossier laragon\www\
- Si le téléchargement d'une nouvelle version de PHP a été nécessaire, veillez suivre les instructions suivantes pour lier PHP et Apache à Laragon : [PHP](https://www.kreaweb.be/laragon-update-php/) et [Apache](https://www.kreaweb.be/laragon-update-apache/)

4. Il faudra installer (dans l'ordre) : 
-- [composer :](https://getcomposer.org/download/)
-- [scoop :](https://scoop.sh/) avec le Powershell Windows
-- [Symfony CLI :](https://symfony.com/download)

5. Démarrer le serveur de Symfony en tâche de fond : 
```
cmd
symphony serve -d
```

6. Pour commencer la navigation, veuillez exécuter la requêtre suivante dans la barre d'URL :
```
https://127.0.0.1:8001/entreprise
```

---

## 5. Auteur
Ce projet a été réalisé par Théo Arbogast (aka Xylo87).  
N'hésitez pas à ouvrir une issue ou à me contacter pour toute suggestion ou question.