#!/bin/bash

compressed=$1 # il file passato va nella variabile compressed
uncompressed="${compressed%.gz}" #creo una variabile che sarà il riferimento per il file non compresso

mkdir -p ./caricati # ho fatto in modo che i file dezippati venissero inseriti in una cartella specifica invece che eliminati, è questa
touch processed.txt # crea il file di testo in caso non esista già

if grep -q -F "$uncompressed" processed.txt; then #controlla che il file in analisi non sia stato già caricato
    exit 0
fi

gzip -dk "$compressed" #unzippa i file

curl -s --user "admin:admin" -X POST "http://localhost:3333/api/pcap/upload" -H "Content-Type: multipart/form-data" -F "file=@$uncompressed" #curl caronte

curl -s -X POST --data-binary "@$uncompressed" "http://localhost:8080/upload/$uncompressed" #curl pkappa

# potenzialmente si può aggiungere il curl di showel
echo "$uncompressed" >> processed.txt
mv "$uncompressed" ./caricati/ #invece che eliminare i file vengono spostati
#prima c'era un rm "$uncompressed" 
