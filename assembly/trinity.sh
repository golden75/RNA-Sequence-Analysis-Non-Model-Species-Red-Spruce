#!/bin/bash
#SBATCH --job-name=trinity
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 16
#SBATCH --mem=100G
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=neranjan.perera@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname

module load trinity/2.6.6

Trinity --seqType fq \
	--max_memory 100G \
	--single ../quality_control/ambient.trimmed.fastq \
	--min_contig_length 300 \
	--CPU 16 \
	--normalize_reads \
	--output trinity_ambient \
	--full_cleanup

Trinity --seqType fq \
        --max_memory 100G \
        --single ../quality_control/cotreated.trimmed.fastq \
        --min_contig_length 300 \
        --CPU 16 \
        --normalize_reads \
        --output trinity_cotreated \
        --full_cleanup

Trinity --seqType fq \
        --max_memory 100G \
        --single ../quality_control/elevated.trimmed.fastq \
        --min_contig_length 300 \
        --CPU 16 \
        --normalize_reads \
        --output trinity_elevated \
        --full_cleanup
	


