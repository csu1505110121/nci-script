#!/bin/bash

#PBS -l ncpus=1
#PBS -l mem=2GB
#PBS -l jobfs=2GB
#PBS -q copyq
#PBS -lother=mdss
#PBS -P v15
#PBS -l walltime=10:00:00
#PBS -l storage=gdata/v15+massdata/v15
#PBS -l wd
  
#tar -cvf my_archive.tar /g/data/a00/aaa777/work1
#mdss -P v15 mkdir -p aaa777/test/
mdss -P v15 put LLPS_mechanism.tar qiangzhu/LLPS_mechanism.tar
mdss -P v15 dmls -ltrh qiangzhu/LLPS_mechanism.tar
