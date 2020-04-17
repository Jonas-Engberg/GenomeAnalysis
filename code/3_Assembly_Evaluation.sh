#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:30:00
#SBATCH -J MetaQuast_Thrash_JE
#SBATCH --mail-type=ALL
#SBATCH --mail-user earthius@gmail.com

# load modules
module load bioinfo-tools
module load quast/4.5.4

# Your commands

# From Site D1
metaquast.py /home/joen8526/GenomeAnalysis/data/assembled_genome_data/Site_D1/final.contigs.fa \
-o /home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D1 \
-t 2 \
-1 /home/joen8526/GenomeAnalysis/data/raw_data/DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz \
-2 /home/joen8526/GenomeAnalysis/data/raw_data/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz

# From Site D3
metaquast.py /home/joen8526/GenomeAnalysis/data/assembled_genome_data/Site_D3/final.contigs.fa \
-o /home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D3 \
-t 2 \
-1 /home/joen8526/GenomeAnalysis/data/raw_data/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz \
-2 /home/joen8526/GenomeAnalysis/data/raw_data/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz
