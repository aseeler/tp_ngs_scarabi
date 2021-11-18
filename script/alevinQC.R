library(alevinQC)

setwd("/home/rstudio/mydatalocal/tp_ngs_scarabi")

alevin.path <- "results/Alevin/"
QCreport.path <- "results/alevinQC_report"
samples <- c("SRR8257101", "SRR8257104")
for(sample in samples)

  
{
  alevinQCReport(baseDir = paste0(alevin.path, sample),
                 sampleId = sample,
                 outputFile = paste0(QCreport.path, "/",sample,"_alevinReport.html"),
                 outputFormat = "html_document",
                 forceOverwrite = TRUE)
}







