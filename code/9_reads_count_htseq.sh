#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J read_counting_htseq
#SBATCH --mail-type=ALL
#SBATCH --mail-user earthius@gmail.com

# load modules
module load bioinfo-tools
module load htseq/0.9.1

# My commands

#Only looking at the bins having >60% completness and <10% contamination.
# This means filtering out the following bins:
# Bins with <60% completnss:    1,7,8,10,13,17,19,23,26
# Bins with >10% contamination: 4,12,15,18,20,21,25

#mkdir -p ~/GenomeAnalysis/analyses/09_readcount_htseq/SRR4342137
#mkdir -p ~/GenomeAnalysis/analyses/09_readcount_htseq/SRR4342139

bins37="/home/joen8526/GenomeAnalysis/data/mapped_RNA/SRR4342137"
bins39="/home/joen8526/GenomeAnalysis/data/mapped_RNA/SRR4342139"
outdir37="/home/joen8526/GenomeAnalysis/analyses/09_readcount_htseq/SRR4342137"
outdir39="/home/joen8526/GenomeAnalysis/analyses/09_readcount_htseq/SRR4342139"


for bin in bins_2 bins_3 bins_5 bins_6 bins_9 bins_11 bins_14 bins_16 bins_22 bins_24; 
do 
htseq-count --format bam --order pos -t CDS -i ID $bins37/${bin}_fa_mapped_SRR4342137.bam <(sed '/##FASTA/,$d'/home/joen8526/GenomeAnalysis/analyses/06_annotation_prokka/bin_${bin#$"bins_"}/prokka_${bin#$"bins_"}.gff) > $outdir37/bin_${bin#$"bins_"}_count.out
htseq-count --format bam --order pos -t CDS -i ID $bins39/${bin}_fa_mapped_SRR4342139.bam <(sed '/##FASTA/,$d' /home/joen8526/GenomeAnalysis/analyses/06_annotation_prokka/bin_${bin#$"bins_"}/prokka_${bin#$"bins_"}.gff) > $outdir39/bin_${bin#$"bins_"}_count.out
done
