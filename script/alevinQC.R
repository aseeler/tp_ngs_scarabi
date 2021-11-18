library(alevinQC)


alevin.path <- "results/Alevin/"
QCreport.path <- "results/Alevin/alevinQC_report"
samples <- c("SRR8257101", "SRR8257104")
dir.create(QCreport.path)

for(sample in samples)
{
  alevinQCReport(baseDir = paste0(alevin.path, sample),
                 sampleId = sample,
                 outputFile = paste0(sample,"_alevinReport.html"),
                 outputDir = QCreport.path,
                 outputFormat = "html_document",
                 forceOverwrite = TRUE)
}







