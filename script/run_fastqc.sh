#! /bin/bash

cd ~/mydatalocal/tp_ngs_scarabi

fastqc -o results/Quality_analysis/ -f fgq data/*.fastq.gz

