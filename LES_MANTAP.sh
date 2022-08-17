#!/bin/bash -l
# Use the current working directory and current environment for this job.
#SBATCH -D ./
#SBATCH --export=ALL
# Define an output file - will contain error messages too
#SBATCH -o GUM-%j.out
# Define job name
#SBATCH -J GUM
# Request 80 cores - this will be two nodes
#SBATCH -n 96
# This asks for 10 minutes of time.
#SBATCH -t 01:00:00
###SBATCH -t 00:30:00
###SBATCH --mem-per-cpu=8000M
# Insert your own username to get e-mail notifications
#SBATCH --mail-user=gugum.gumbira@bppt.go.id
#SBATCH --mail-type=ALL

module purge 
source /opt/intel/oneapi/gugum.sh
module load LES_Gumbira

mpirun -np 80 LES_Gumbira
