#! /bin/bash

#On définit le directory pour que toutes les données soient bien stockées dans le dossier 'data'
cd ~/mydatalocal/tp_ngs_scarabi

#On créé une variable avec tous les SRR qu'on veut télécharger 
srr=("SRR8257101 SRR8257104")

#On lançe une boucle for pour télécharger toutes les datas dont le SRR est dans la variable SRR
for sample in $srr
  do 
#On indique quels SRR prendre (en mettant bien un $ pour rentrer dans la variable SRR). 
#Puis on dit de paralléliser 8 threads en parallèle pour aller plus vite. 
#Puis on donne le output directory 
#Puis on dit de split les files pour télécharger plus vite
#Puis ont gzip et je sais pas à quoi ça sert 

  parallel-fastq-dump --sra-id $sample\
                      --threads 8\
                      --outdir data/\
                      --split-files\
                      --gzip
  rm ${sample}_3.fastq.gz  
  #On a supprimé les fichier '_3' parce que ça sert à rien 
  done
    
  