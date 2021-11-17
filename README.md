# TP NGS

This R Markdown document will contain all the information necessary to understand the code we will create. 

## Origin of the data
scRNAseq data of A. thaliana root protoplasts. Protoplasts are cells from which the cell wall was removed. 
The scRNAseq was obtained with a 10X Genomics Chromium protocol

The data is in the GEO database (NCBI) under the accession code GSE123013.
We will study samples from one wild-type and one mutant

## Different steps of the analysis
### Importing data
Importing two samples (but not the _3 because they are not useful). Script is download_data.sh

### Quality control
Quality control using fastqc. File is run_fastqc.sh
