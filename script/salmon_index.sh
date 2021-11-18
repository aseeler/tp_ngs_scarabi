#! /bin/bash

cd ~/mydatalocal/tp_ngs_scarabi/

salmon index -t data/Transcriptome/transcriptome.fa -k 31 -i data/Transcriptome/salmon -p 8
