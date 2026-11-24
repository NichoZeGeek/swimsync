# SwimSync – v1 (transfert de podcasts vers le casque)

Appli 100 % HTML/JS. Tes fichiers ne quittent jamais le téléphone : la page lit et écrit directement les dossiers que tu autorises.
Les réglages sont dans le stockage du navigateur (exportables en JSON).

## Contenu
- `index.html` : l'appli (un seul fichier)
- `manifest.json`, `sw.js`, `icon.svg` : pour l'installer comme une appli et l'utiliser hors connexion
- `termux/` : téléchargement YouTube ➜ MP3 (yt-dlp)

## Installation sur le téléphone
L'accès aux dossiers demande une page servie en **https** (ou localhost) et **Chrome pour Android** récent.
1. Héberge le dossier sur GitHub Pages (gratuit), ou n'importe quel hébergement statique en https.
2. Ouvre l'adresse dans Chrome ➜ menu ⋮ ➜ « Ajouter à l'écran d'accueil ». Après le premier chargement, elle marche hors connexion.
3. Essai sans rien brancher : ajoute `?demo` à l'adresse (faux téléphone et faux casque).

## Prérequis côté matériel
- Adaptateur **USB-A femelle ➜ USB-C (OTG)** pour brancher le câble magnétique du casque sur le téléphone.
- Casque **éteint** avant de le brancher (il apparaît alors comme une clé USB).

## Podcast Addict
Par défaut, les fichiers sont dans `Android/data/…`, que Chrome ne peut pas ouvrir.
Podcast Addict ➜ Réglages ➜ Téléchargement ➜ Dossier de stockage ➜ cocher l'option « dossier public » et accepter le déplacement.
Les fichiers passent alors dans un dossier du type `Android/media/com.bambuna.podcastaddict/`, à ajouter dans SwimSync.

## YouTube
Recommandé : l'appli **Seal** (F-Droid ou GitHub, gratuite, basée sur yt-dlp).
Réglages de Seal : extraire l'audio en MP3, dossier de téléchargement audio `/Podcasts/YouTube`.
Ensuite : YouTube ➜ Partager ➜ Seal. Ajoute `/Podcasts/YouTube` comme dossier dans SwimSync.
Alternative avancée : Termux + yt-dlp (dossier `termux/`).

## Ordre de lecture
Réglages ➜ « Tester mon casque » : copie 3 fichiers de bips pour savoir si ton casque lit par ordre de copie, ordre inverse, ou ordre alphabétique.
L'appli copie les fichiers un par un, les numérote, et recrée le dossier `PODCASTS` quand c'est nécessaire pour garder l'ordre.
