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

#nextPolish2 -t ${threadN} result/${readID}.winnowmap.sorted.bam db/ref.fa db/k21.yak db/k31.yak > result/${readID}.nextPolish2.fa
nextPolish2 \
    -t ${threadN} \
    result/${readID}.bam \
    db/ref.fa \
    db/yakDB/k21.yak \
    db/yakDB/k31.yak \
    1> result/${readID}.nextPolish2.fa \
    2> result/${readID}.nextPolish2.log

# or try with -r
#nextPolish2 -r -t 5 hifi.map.sort.bam asm.fa.gz k21.yak k31.yak > asm.np2.fa
