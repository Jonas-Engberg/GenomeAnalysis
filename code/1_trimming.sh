#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:40:00
#SBATCH -J Trimmomatic_Run_JE
#SBATCH --mail-type=ALL
#SBATCH --mail-user earthius@gmail.com

# Load modules
module load bioinfo-tools
module load trimmomatic

# Your commands

# Choosing -phred33 because the data encoding is in Illumina 1.9 format.
# Since Illumina 1.8+ the standard phred score is -phred33

trimmomatic PE -threads 2 -phred33 -trimlog /home/joen8526/GenomeAnalysis/data/trimmed_data/trimlog_SRR4342137 \
/home/joen8526/GenomeAnalysis/raw_data/RNA_untrimmed/SRR4342137.1.fastq.gz \
/home/joen8526/GenomeAnalysis/raw_data/RNA_untrimmed/SRR4342137.2.fastq.gz \
/home/joen8526/GenomeAnalysis/data/trimmed_data/SRR4342137_Paired_Forward.fq.gz \
/home/joen8526/GenomeAnalysis/data/trimmed_data/SRR4342137_Unpaired_Forward.fq.gz \
/home/joen8526/GenomeAnalysis/data/trimmed_data/SRR4342137_Paired_Reversed.fq.gz \
/home/joen8526/GenomeAnalysis/data/trimmed_data/SRR4342137_Unpaired_Reversed.fq.gz \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:30 MINLEN:50

trimmomatic PE -threads 2 -phred33 -trimlog /home/joen8526/GenomeAnalysis/data/trimmed_data/trimlog_SRR4342139 \
/home/joen8526/GenomeAnalysis/raw_data/RNA_untrimmed/SRR4342139.1.fastq.gz \
/home/joen8526/GenomeAnalysis/raw_data/RNA_untrimmed/SRR4342139.2.fastq.gz \
/home/joen8526/GenomeAnalysis/data/trimmed_data/SRR4342139_Paired_Forward.fq.gz \
/home/joen8526/GenomeAnalysis/data/trimmed_data/SRR4342139_Unpaired_Forward.fq.gz \
/home/joen8526/GenomeAnalysis/data/trimmed_data/SRR4342139_Paired_Reversed.fq.gz \
/home/joen8526/GenomeAnalysis/data/trimmed_data/SRR4342139_Unpaired_Reversed.fq.gz \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:30 MINLEN:50
