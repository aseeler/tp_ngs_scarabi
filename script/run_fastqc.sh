#! /bin/bash

cd ~/mydatalocal/tp_ngs_scarabi

fastqc -o results/ -f fastq data/*.fastq.gz

