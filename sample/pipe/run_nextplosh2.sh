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
bash pipe/bwa-mem_T05.sh ${readID} ${threadN}
bash pipe/samtools-sort.sh  ${readID}.bwa-memT05
bash pipe/nnextplosh2.sh    ${readID}.bwa-memT05.sorted ${threadN}

#winnowmap
#bash pipe/winnowmap-T01.sh ${readID} ${threadN}
#bash pipe/nnextplosh2.sh   ${readID}.winnowmap-T01.sorted ${threadN}

#minimap2
#bash pipe/minimap2-T01.sh  ${readID} ${threadN}
#bash pipe/nnextplosh2.sh   ${readID}.minimap2-T01.sorted ${threadN}
