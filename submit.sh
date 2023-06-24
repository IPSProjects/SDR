#!/bin/bash
#SBATCH --partition=cpu-long
##SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00

module load gcc
module load openmpi/1.8.3_gcc-11.3
module load cp2k/2023.1_ompi-4.1.4

dvc repro
