#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:30:00
#SBATCH -J BWA_Thrash
#SBATCH --mail-type=ALL
#SBATCH --mail-user earthius@gmail.com

# load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.10

# My commands

for bin in /home/joen8526/GenomeAnalysis/data/binned_metagenome/*.fa

do
  
  bwa index $bin
  binnum=${bin/#$"/home/joen8526/GenomeAnalysis/data/binned_metagenome/"}

  # 
  bwa mem -t 2 $bin ~/GenomeAnalysis/data/trimmed_data_2/SRR4342137_Paired_Forward.fastq.gz \
  ~/GenomeAnalysis/data/trimmed_data_2/SRR4342137_Paired_Reversed.fastq.gz \
  > ~/GenomeAnalysis/data/mapped_RNA/SRR4342137/${binnum}_mapped_SRR4342137.sam
  
  bwa mem -t 2 $bin ~/GenomeAnalysis/data/trimmed_data_2/SRR4342139_Paired_Forward.fastq.gz \
  ~/GenomeAnalysis/data/trimmed_data_2/SRR4342139_Paired_Reversed.fastq.gz \
  > ~/GenomeAnalysis/data/mapped_RNA/SRR4342139/${binnum}_mapped_SRR4342139.sam

  #Converting -sam file to sorted .bam-file using samtools piping
  samtools view -b ~/GenomeAnalysis/data/mapped_RNA/SRR4342137/${binnum}_mapped_SRR4342137.sam | samtools sort - -o ~/GenomeAnalysis/data/mapped_RNA/SRR4342137/${binnum}_mapped_SRR4342137.bam
  samtools view -b ~/GenomeAnalysis/data/mapped_RNA/SRR4342139/${binnum}_mapped_SRR4342139.sam | samtools sort - -o ~/GenomeAnalysis/data/mapped_RNA/SRR4342139/${binnum}_mapped_SRR4342139.bam

  #Removing the sam files
  rm ~/GenomeAnalysis/data/mapped_RNA/SRR4342137/${binnum}_mapped_SRR4342137.sam
  rm ~/GenomeAnalysis/data/mapped_RNA/SRR4342139/${binnum}_mapped_SRR4342139.sam

done


