#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:45:00
#SBATCH -J Metabat_GenomeAnalysis
#SBATCH --mail-type=ALL
#SBATCH --mail-user earthius@gmail.com

# load modules
module load bioinfo-tools
module load MetaBat/2.12.1

# Your commands
metabat -i /home/joen8526/GenomeAnalysis/data/assembly_pooled/final.contigs.fa -o /home/joen8526/GenomeAnalysis/data/binned_metagenome/bins -t 3
