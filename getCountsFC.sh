#!/bin/bash
#SBATCH -J countFC
#SBATCH --mem=40G
#SBATCH --time=120:00:00
#SBATCH -N 1
#SBATCH -c 16

module add subread/1.6.3

featureCounts  -T 6 -p  -t peak -g peak_id -a  hg19.intervals.1kb.gtf -o counts.txt ./BAMS/*.bam
