#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks=48
#SBATCH --cpus-per-task=1
#SBATCH --time=12:00:00
#SBATCH --account=pawsey0391
#SBATCH --hint=nomultithread
#SBATCH --exclusive
#SBATCH --qos=high

#NODES=48

module load cmake/3.27.7
module load boost/1.83.0-c++14-python
module load cray-mpich/8.1.25

source /software/projects/pawsey0391/qzhu/amber24/amber.sh

export I_MPI_COMPATIBILITY=3
export MPICH_NO_BUFFER_ALIAS_CHECK=1

srun sander.MPI -ng 48 -groupfile string.groupfile
