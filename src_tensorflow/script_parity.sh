#!/bin/bash
#
#SBATCH --job-name=parity
#SBATCH --mem=6G
#SBATCH --gres=gpu:1,gmem:11G
#SBATCH --array=0-6
ARGS=(1 0.5 0.1 0.05 0.01 0.005 0.001)
srun python parity.py --tau ${ARGS[$SLURM_ARRAY_TASK_ID]}
