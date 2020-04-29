#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 12:00:00
#SBATCH -J Megahit_JonasEngberg
#SBATCH --mail-type=ALL
#SBATCH --mail-user earthius@gmail.com

# Load modules
module load bioinfo-tools
module load megahit

#Commands
# From Zone D1
#megahit --k-min 65 --k-max 105 --k-step 10 --kmin-1pass -t 2 \
#-1 /home/joen8526/GenomeAnalysis/data/raw_data/DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz \
#-2 /home/joen8526/GenomeAnalysis/data/raw_data/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz \
#-o /home/joen8526/GenomeAnalysis/data/assembled_genome_data/Site_D1

# From Zone D3
#megahit --k-min 65 --k-max 105 --k-step 10 --kmin-1pass -t 2 \
#-1 /home/joen8526/GenomeAnalysis/data/raw_data/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz \
#-2 /home/joen8526/GenomeAnalysis/data/raw_data/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz \
#-o /home/joen8526/GenomeAnalysis/data/assembled_genome_data/Site_D3

megahit --k-min 65 --k-max 105 --k-step 10 --kmin-1pass -t 2 \
-1 /home/joen8526/GenomeAnalysis/data/raw_data/DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz,/home/joen8526/GenomeAnalysis/data/raw_data/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz \
-2 /home/joen8526/GenomeAnalysis/data/raw_data/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz,/home/joen8526/GenomeAnalysis/data/raw_data/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz \
-o /home/joen8526/GenomeAnalysis/data/assembly_pooled

