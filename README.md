# TP NGS

This R Markdown document will contain all the information necessary to understand the code we will create. 

# Origin of the data

scRNAseq data of A. thaliana root protoplasts. Protoplasts are cells from which the cell wall was removed. 
The scRNAseq was obtained with a 10X Genomics Chromium protocol

The data is in the GEO database (NCBI) under the accession code GSE123013.
We will study samples from one wild-type and one mutant

Analysis on the samples : 
SRR8257100 WT
SRR8257101 WT
SRR8257102 WT
SRR8257103 WT
SRR8257104 MUT
SRR8257105 MUT
SRR8257106 MUT

# Different steps of the analysis
## Importing data

Importing two samples (but not the _3 because they are not useful). Script is download_data.sh

## Quality control

Quality control using fastqc. File is run_fastqc.sh and the results are in results/Fastqc_analysis
Then quality control using multiqc. File is run_multiqc.sh and the results are in results/Multiqc_analysis
The data looks good, we can continue with the analysis

#Alevin
##Retrieving transcriptome data

Transcriptome data was found online on the Salmon documentation (https://ics.hutton.ac.uk/atRTD/RTD2/AtRTD2_19April2016.fa). A script 'retrieve_transcriptome.sh' was written to downloads the transcriptome in the data file. 

##Creating the tgMap file

Created using the bioawk command. Had to select the column to extract.

##Running Alevin

A script 'Alevin.sh' was written to run Alevin, using the transcriptome data downloaded previously, the salmon library and the tgMap file. The script is run separately for both samples (the WT and the mutant). 

## Retrieving Alevin analysis

The Alevin analysis for every sample was downloaded (from https://flower.ens-lyon.fr/tp_ngs/scarabi/Alevin/quant)

# Seurat analysis
## Opening files in R
Alevin analysis of all the samples was opened in an Rmarkdown file. Data will be analyzed using the Seurat package.

##Quality control
Visualization of the data using violin plots then selection of cells according to some criteria :
Exclusion of the 5% of cells with the highest percentage of mitochondrial gene expresion
Selection of the cells with less than 0.2% of chloroplastic genes

##Normalization


## Highly variable data

## Scaling

## PCA

## Heatmap and Elbow plot
Visualization of the contribution of each gene to each PCA by heatmap
And contribution of each PCA to the variance by elbow plots

## UMAP
Neighbors and clusters were found then visualized by UMAP. Resolution : 0.5

## Downloading markers for different cell types
Markers were obtained from https://flower.ens-lyon.fr/tp_ngs/scarabi/Li2016/Markers.csv

## Locating expression of genes for each cell type on the UMAP
Using Featureplot

## Annotation through a different method
Downloaded gene expression data for A. t cell types from flower.ens-lyon.fr
Created a dataframe with all the data, removing repetitions and using the txp2gene file to associate genes (??)

#Tools
##Salmon and Alevin
To count the number of cells that were analyzed and attribute a gene name to every sequence that was sequenced
https://salmon.readthedocs.io/en/latest/salmon.html

##AlevinQC
To open the output from the Alevin analysis. Need to install packages "httpuv"then install AlvinQC. For documentation : https://csoneson.github.io/alevinQC/
Need to install the developer version of AlevinQC : https://www.bioconductor.org/packages/devel/bioc/html/alevinQC.html

## Seurat 
Single-cell analysis. Need to install the packages "Seurat" and "tximport". For documentation : "https://satijalab.org/seurat/articles/pbmc3k_tutorial.html"


