# RNA-Sequence-Analysis-Non-Model-Species-Red-Spruce
RNA Sequence Analysis for Non Model Species (Red Spruce)  

# RNA Sequcence Analysis of Non Model Species (Red Spruce)  

This repository is a usable, publicly available tutorial for analyzing differential expression data and creating topological gene networks. All steps have been provided for the UConn CBC Xanadu cluster here with appropriate headers for the Slurm scheduler that can be modified simply to run.  Commands should never be executed on the submit nodes of any HPC machine.  If working on the Xanadu cluster, you should use sbatch scriptname after modifying the script for each stage.  Basic editing of all scripts can be performed on the server with tools such as nano, vim, or emacs.  If you are new to Linux, please use [this](https://bioinformatics.uconn.edu/unix-basics) handy guide for the operating system commands.  In this guide, you will be working with common bio Informatic file formats, such as [FASTA](https://en.wikipedia.org/wiki/FASTA_format), [FASTQ](https://en.wikipedia.org/wiki/FASTQ_format), [SAM/BAM](https://en.wikipedia.org/wiki/SAM_(file_format)), and [GFF3/GTF](https://en.wikipedia.org/wiki/General_feature_format). You can learn even more about each file format [here](https://bioinformatics.uconn.edu/resources-and-events/tutorials/file-formats-tutorial/). If you do not have a Xanadu account and are an affiliate of UConn/UCHC, please apply for one **[here](https://bioinformatics.uconn.edu/contact-us/)**.   

Contents   
1.  [Introduction](#1-introduction)    



## 1. Introduction   

In this tutorial we will be analyzing RNA-Sequence data from pine needle samples of the red spruce. This data is not published and therefore can only be accessed through the Xanadu directory in "/UCHC/PublicShare/RNASeq_Workshop/RedSpruce/Reads/Illumina".  We will be using the red spruce as a "non-model" organism. You may be quite familiar with "model" organisms, such as Drosophila melanogaster, Caenorhabditis elegans, or Arabidopsis thaliana. What is it that makes an organism a "model"? A few things. But most critically, the ease with which the organisms may be grown in a controlled setting, how quick the organisms mature and may reproduce, the cost of growing and maintaining a population of an organism, and the ease with which the organism genomics may be manipulated manually. From this we see why the organisms listed prior are good models -- nemotodes, fruit flies, and weeds are small so do not take much space and may be grown in a laboratory, they reach maturity and reproduce at a very early age (in some instances at a week old!), are quite robust in needing few nutrients to survive, and lastly can be genetically modified quite easily (whether through artificial selection, transposable elements, or chemical mutagenesis). From all of this we can see why the [red spruce](https://en.wikipedia.org/wiki/Picea_rubens) is not a great model!   

When an organism is called "model" there is an underlying assumption that very generous amounts of research have been performed on the species resulting in large pools of publicly available data. In biology and bioinformatics this means there are reference transcriptomes, structural annotations, known variant genotypes, and a wealth of other useful information in computational research. By contrast, when an organism is called "non-model" there is the underlying assumption that the information described prior will have to be generated by the research. This means that after extracting genetic data from a non-model organism, the researcher will then have to assemble the transcriptome, annotate the transcriptome, identify any pertinent genetic relationships, and so on. We can use this to develop a small map of our goals for analyzing our red spruce RNA samples. That is:  

![ out line ](/images/outline.png)  


