############################################################################################
readID=$1
fileExt=$2
############################################################################################

if [ -z ${readID} ]; then
    echo "readID is empty."
    exit 1
fi

if [ -z ${fileExt} ]; then
    echo "fileExt is empty."
    exit 1
fi

samtools sort \
    --threads 128 \
    -o  result/${readID}.sorted.bam \
    result/${readID}.${fileExt} \
    1 > result/${readID}.sorted.bam.log \
    2 > result/${readID}.sorted.bam.err
samtools index \
    -c  result/${readID}.sorted.bam