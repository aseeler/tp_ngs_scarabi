#! /bin/bash

cd ~/mydatalocal/tp_ngs_scarabi

multiqc -o results/Quality_analysis/ -f fgq data/*.fastq.gz