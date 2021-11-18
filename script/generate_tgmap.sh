#! /bin/bash

cd ~/mydatalocal/tp_ngs_scarabi/

bioawk -c gff '$feature=="exon" {print $9}' < data/Transcriptome/transcriptome.gtf\
| awk -F " " '{print substr($2,2,length($2)-3) "\t" substr($4,2,length($4)-3)}' > data/Transcriptome/txp2gene.tsv
