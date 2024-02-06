#!/bin/bash
#SBATCH --job-name=slp_py     # Job name
#SBATCH --partition=normal             # Run on Partition
#SBATCH --ntasks=1                    # Number of CPU
#SBATCH --nodes=1                     # Number of Nodes
#SBATCH --time=01:00:00               # Time limit hrs:min:sec
#SBATCH --output=out.slp_py.%j       # Standard output and error log
pwd; hostname; date

echo "Wait Job, Sleeping for 200 Seconds"
echo $SLURM_JOB_NAME
echo $SLURM_JOBID
sleep 60

date
python3 test.py  
