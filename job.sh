#!/bin/bash

# NOTE: Lines starting with "#SBATCH" are valid SLURM commands or statements,
#       while those starting with "#" and "##SBATCH" are comments.  Uncomment
#       "##SBATCH" line means to remove one # and start with #SBATCH to be a
#       SLURM command or statement.


#SBATCH -J slurm_job #Slurm job name

# Set the maximum runtime, uncomment if you need it
##SBATCH -t 48:00:00 #Maximum runtime of 48 hours

# Enable email notificaitons when job begins and ends, uncomment if you need it
#SBATCH --mail-user=jhuangcj@ust.hk #Update your email address
#SBATCH --mail-type=begin
#SBATCH --mail-type=end

# Choose partition (queue) to use. Note: replace <partition_to_use> with the name of partition
#SBATCH -p gpu-share

#SBATCH -N 1 -n 3 --gres=gpu:1

# Setup runtime environment if necessary

# Go to the job submission directory and run your application
cd $HOME/tom/rend
python run.py -t -e