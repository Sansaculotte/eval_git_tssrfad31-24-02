#!/bin/bash

# Affiche un message pour demander où enregistrer le projet
echo "Où voulez-vous enregistrer le projet ? (Chemin absolu ex : c:/chemin/dossier)"
# Récupère le chemin du répertoire racine
read directory

# Affiche un message pour demander le nom du projet
echo "Quel est le nom de votre projet ?"
# Récupère le nom du projet
read project

# Se déplace dans le dossier racine
cd "$directory" || { echo "Échec du changement de répertoire. Vérifiez le chemin et réessayez."; exit 1; }

# Crée le dossier du projet
mkdir "$project" || { echo "Échec de la création du dossier de projet."; exit 1; }

# Se déplace dans le dossier du projet
cd "$project" || { echo "Échec du changement de répertoire vers le dossier du projet."; exit 1; }

# Crée les fichiers nécessaires
touch index.html style.css readme.md || { echo "Échec de la création des fichiers."; exit 1; }

# Affiche un message de confirmation
echo "Le projet a été ajouté."
