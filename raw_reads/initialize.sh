#!/bin/bash
#SBATCH --job-name=initialize
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH --mem=128M
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=first.last@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

fpath="/UCHC/PublicShare/RNASeq_Workshop/RedSpruce/Reads/Illumina"

for f in ${fpath}/*; do
	echo $f
	echo `basename ${f}`
	ln -s ${f} `basename ${f}`
done


