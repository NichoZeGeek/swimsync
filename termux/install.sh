#!/data/data/com.termux/files/usr/bin/bash
# SwimSync – installation de yt-dlp dans Termux (à lancer une seule fois)
set -e
pkg update -y
pkg install -y python ffmpeg termux-api
pip install -U yt-dlp
termux-setup-storage          # accepte l'accès au stockage quand Android le demande
mkdir -p ~/bin
cp "$(dirname "$0")/termux-url-opener" ~/bin/termux-url-opener
chmod +x ~/bin/termux-url-opener
mkdir -p ~/storage/shared/Podcasts/YouTube
echo "OK – partage un lien YouTube vers Termux pour tester."
