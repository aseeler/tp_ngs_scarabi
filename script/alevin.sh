#! /bin/bash

cd ~/mydatalocal/tp_ngs_scarabi/

srr=("SRR8257101 SRR8257104")

for sample in $srr
  do
  salmon alevin -l ISR -1 data/${sample}_1.fastq.gz  -2 data/${sample}_2.fastq.gz --chromium\
 -i data/Transcriptome/salmon -p 10 -o results/Alevin/${sample}/ --tgMap data/Transcriptome/txp2gene.tsv

  done
 
