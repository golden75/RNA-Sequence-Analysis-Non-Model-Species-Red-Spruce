#!/bin/bash
#SBATCH --job-name=clustering
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 8
#SBATCH --mem=100G
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=neranjan.perera@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date

# Combine the assembeled fasta files together
cat ../assembly/trinity_ambient.Trinity.fasta ../assembly/trinity_cotreated.Trinity.fasta ../assembly/trinity_elevated.Trinity.fasta > combine.fasta


# Clustering using vsearch
module load vsearch/2.4.3

vsearch --threads 8 --log LOGFile \
	--cluster_fast combine.fasta \
	--id 0.80 \
	--centroids centroids.fasta \
	--uc clusters.uc

date
