#!/bin/bash
#SBATCH --job-name=sickle
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH --mem=500M
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=first.last@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err  

hostname

module load sickle/1.33

sickle se -f ../raw_reads/ambient.fastq -t illumina -o ambient.trimmed.fastq -q 30 -l 35
sickle se -f ../raw_reads/elevated.fastq -t illumina -o elevated.trimmed.fastq -q 30 -l 35
sickle se -f ../raw_reads/cotreated.fastq -t illumina -o cotreated.trimmed.fastq -q 30 -l 35 


