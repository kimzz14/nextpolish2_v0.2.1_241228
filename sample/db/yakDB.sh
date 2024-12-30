############################################################################################
threadN=24
############################################################################################

mkdir yakDB

yak count -o yakDB/k21.yak -t ${threadN} -k 21 -b 37 \
    /archive/kimzz14/SRA_RAW/NAAS/Triticum_aestivum/Keumkang/HiFi/data/Keumgang.HiFi.01C.fastq.gz \
    1> yakDB/k21.yak.log \
    2> yakDB/k21.yak.err

yak count -o yakDB/k31.yak -t ${threadN} -k 31 -b 37 \
    /archive/kimzz14/SRA_RAW/NAAS/Triticum_aestivum/Keumkang/HiFi/data/Keumgang.HiFi.01C.fastq.gz \
    1> yakDB/k31.yak.log \
    2> yakDB/k31.yak.err

echo 'Done' > yakDB.log