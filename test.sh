#!/bin/bash
#SBATCH -p gpu
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --gpus-per-node=1
#SBATCH --gpus=1
#SBATCH -t 1-00:00:00 
#SBATCH --cpus-per-task=18
#SBATCH -o llama7b_generate.out

source /home/sliu01/anaconda3/etc/profile.d/conda.sh
source activate prune_llm
cd ..


python   main_singular_value_threshold.py   --prune_type weight_thresold   
