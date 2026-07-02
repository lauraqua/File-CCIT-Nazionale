#!/bin/bash

while true; do 
	rsync -avz "vulnbox:/root/pcaps/round_[0-9]*" ./ # sincronizza la vulnbox alla macchina host, in particolare il primo path della vb a questa cartella
	find . -mindepth 1 -maxdepth 1 -name "round_[0-9]*" -exec ./upload_and_rename.sh '{}' \; #trova tutti i file con il nome round... e li carica ad upload....sh
	sleep 30  #tutto ciò ogni 30 sec
done
