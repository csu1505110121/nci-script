#!/bin/bash

#PBS -l walltime=24:00:00
#PBS -l mem=24GB
#PBS -q normal
#PBS -l ncpus=1
#PBS -l jobfs=50GB
#PBS -l software=gaussian/g16a03
#PBS -l storage=gdata/eh83+scratch/eh83
#PBS -l wd
#PBS -P eh83

# Running production steps
#module load cuda/12.0.0
module load gaussian/g16a03


g16 4H_PBQS_cis_qz_based_on_4Na.gjf

#qsub job_submit.51.sh

