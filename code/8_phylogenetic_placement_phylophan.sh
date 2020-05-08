#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J BWA Thrash
#SBATCH --mail-type=ALL
#SBATCH --mail-user earthius@gmail.com
# load all the necessary modules

module load bioinfo-tools
module load phylophlan
module load FastTree
module load usearch/5.2.32
module load biopython
module load muscle

outdir="~/GenomeAnalysis/analyses/8_phylophlan"
mkdir -p $outdir/input/metagenome
mkdir -p $outdir/output
mkdir -p $outdir/data/ppaalns

# symlink phylophlan data files
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/data/*.bz2 $outdir/data/
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/data/ppaalns/*.bz2 $outdir/data/ppaalns/
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/data/ppafull.tax.txt $outdir/data/
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/taxcuration/ $outdir/taxcuration

#Symlinks to metgenome (prokka)
for fasta in ~/GenomeAnalysis/analyses/06_annotation_prokka/*/*.faa
do

ln -sf $fasta $outdir/input/metagenome

done

# Running Phylophlan
cd $outdir
phylophlan.py -nproc 2 -i -t metagenome
