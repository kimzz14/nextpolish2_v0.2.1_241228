############################################################################################
readID=$1
threadN=$2
############################################################################################

if [ -z ${readID} ]; then
    echo "readID is empty."
    exit 1
fi

if [ -z ${threadN} ]; then
    echo "threadN is empty."
    exit 1
fi

#bwa
bash pipe/bwa-mem_T111.sh  ${threadN} ${readID}
bash pipe/samtools-sort.sh ${threadN} ${readID}.bwa-memT111 bam
bash pipe/nextplosh2.sh    ${threadN} ${readID}.bwa-memT05.sorted 

#winnowmap
#bash pipe/winnowmap-T111.sh ${threadN} ${readID}
#bash pipe/nnextplosh2.sh    ${threadN} ${readID}.winnowmap-T111.sorted

#minimap2
#bash pipe/minimap2-T01.sh  ${threadN} ${readID}
#bash pipe/nnextplosh2.sh   ${threadN} ${readID}.minimap2-T111.sorted
