#!/bin/bash

while true; do 
	rsync -avz "../VulnBox/"round*.gz ./ # sincronizza la vulnbox alla macchina host, in particolare il primo path della vb a questa cartella

	#"vulnbox:/root/pcaps/round_[0-9]*"
	
	find . -mindepth 1 -maxdepth 1 -name "round*.gz" -exec ./upload_and_rename.sh '{}' \; #trova tutti i file con il nome round... e li carica ad upload....sh
	sleep 30  #tutto ciò ogni 30 sec
done
