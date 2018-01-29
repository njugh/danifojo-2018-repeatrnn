#!/bin/bash
#
#SBATCH --job-name=python
#SBATCH --mem=6G
#SBATCH --gres=gpu:1,gmem:11G
#SBATCH --array=1-12
srun python parity_test.py --ponder $SLURM_ARRAY_TASK_ID
