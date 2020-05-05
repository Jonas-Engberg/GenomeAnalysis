#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J Prokka_Annotation
#SBATCH --mail-type=ALL
#SBATCH --mail-user earthius@gmail.com


# load modules
module load bioinfo-tools
module load prokka/1.12-12547ca

# Your commands

#Bacteria
prokka  --force --prefix prokka_1 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_1 ~/GenomeAnalysis/data/binned_metagenome/bins_1.fa
prokka  --force --prefix prokka_2 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_2 ~/GenomeAnalysis/data/binned_metagenome/bins_2.fa
prokka  --force --prefix prokka_3 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_3 ~/GenomeAnalysis/data/binned_metagenome/bins_3.fa
prokka  --force --prefix prokka_4 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_4 ~/GenomeAnalysis/data/binned_metagenome/bins_4.fa
prokka  --force --prefix prokka_5 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_5 ~/GenomeAnalysis/data/binned_metagenome/bins_5.fa
prokka  --force --prefix prokka_6 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_6 ~/GenomeAnalysis/data/binned_metagenome/bins_6.fa
prokka  --force --prefix prokka_7 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_7 ~/GenomeAnalysis/data/binned_metagenome/bins_7.fa
prokka  --force --prefix prokka_8 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_8 ~/GenomeAnalysis/data/binned_metagenome/bins_8.fa
prokka  --force --prefix prokka_9 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_9 ~/GenomeAnalysis/data/binned_metagenome/bins_9.fa
prokka  --force --prefix prokka_11 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_11 ~/GenomeAnalysis/data/binned_metagenome/bins_11.fa
prokka  --force --prefix prokka_13 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_13 ~/GenomeAnalysis/data/binned_metagenome/bins_13.fa
prokka  --force --prefix prokka_15 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_15 ~/GenomeAnalysis/data/binned_metagenome/bins_15.fa
prokka  --force --prefix prokka_16 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_16 ~/GenomeAnalysis/data/binned_metagenome/bins_16.fa
prokka  --force --prefix prokka_17 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_17 ~/GenomeAnalysis/data/binned_metagenome/bins_17.fa
prokka  --force --prefix prokka_18 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_18 ~/GenomeAnalysis/data/binned_metagenome/bins_18.fa
prokka  --force --prefix prokka_19 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_19 ~/GenomeAnalysis/data/binned_metagenome/bins_19.fa
prokka  --force --prefix prokka_21 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_21 ~/GenomeAnalysis/data/binned_metagenome/bins_21.fa
prokka  --force --prefix prokka_22 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_22 ~/GenomeAnalysis/data/binned_metagenome/bins_22.fa
prokka  --force --prefix prokka_23 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_23 ~/GenomeAnalysis/data/binned_metagenome/bins_23.fa
prokka  --force --prefix prokka_24 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_24 ~/GenomeAnalysis/data/binned_metagenome/bins_24.fa
prokka  --force --prefix prokka_25 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_25 ~/GenomeAnalysis/data/binned_metagenome/bins_25.fa
prokka  --force --prefix prokka_26 --addgenes --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_26 ~/GenomeAnalysis/data/binned_metagenome/bins_26.fa

#Archea
prokka  --force --prefix prokka_10 --addgenes --kingdom Archaea --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_10 ~/GenomeAnalysis/data/binned_metagenome/bins_10.fa
prokka  --force --prefix prokka_12 --addgenes --kingdom Archaea --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_12 ~/GenomeAnalysis/data/binned_metagenome/bins_12.fa
prokka  --force --prefix prokka_14 --addgenes --kingdom Archaea --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_14 ~/GenomeAnalysis/data/binned_metagenome/bins_14.fa
prokka  --force --prefix prokka_20 --addgenes --kingdom Archaea --outdir ~/GenomeAnalysis/analyses/06_annotation_prokka/bin_20 ~/GenomeAnalysis/data/binned_metagenome/bins_20.fa


