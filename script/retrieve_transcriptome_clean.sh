#! /bin/bash

cd ~/mydatalocal/tp_ngs_scarabi/data/Clean_transcriptome
#To retrieve the cleaned transcriptome of A. thaliana for further analysis

#wget --user=tp_ngs --password='Arabido2021!' https://flower.ens-lyon.fr/tp_ngs/scarabi/Li2016/metadata_Li2016.txt




#for x in $samps
#do
#wget --user=tp_ngs --password='Arabido2021!' https://flower.ens-lyon.fr/tp_ngs/scarabi/Li2016/Salmon/Counts_Salmon/${x}/quant.sfw --directory-prefix ${x}_quant.sfw
#done

wget -r --user=tp_ngs --password='Arabido2021!' https://flower.ens-lyon.fr/tp_ngs/scarabi/Li2016/Salmon/Counts_Salmon/

