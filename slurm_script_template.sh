#!/bin/bash
#SBATCH --job-name=mesa_test
#SBATCH --output=job_output.stdout
#SBATCH --error=job_error.stderr
#SBATCH --partition=master
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=00-00:30:00
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=schanlar@physics.auth.gr

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
source $MESASDK_ROOT/bin/mesasdk_init.sh
./rn

