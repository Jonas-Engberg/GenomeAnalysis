#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:00:00
#SBATCH -J Preprocessing_of_Data_JE
#SBATCH --mail-type=ALL
#SBATCH --mail-user earthius@gmail.com

# Load modules
module load bioinfo-tools
module load FastQC/0.11.8

# Your commands
fastqc -f fastq -t 2 -o /home/joen8526/GenomeAnalysis/analyses/01_preprocessing/DNA /home/joen8526/GenomeAnalysis/raw_data/DNA_trimmed/*.fastq.gz
fastqc -f fastq -t 2 -o /home/joen8526/GenomeAnalysis/analyses/01_preprocessing/RNA /home/joen8526/GenomeAnalysis/raw_data/RNA_untrimmed/*.fastq.gz
