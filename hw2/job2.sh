#!/bin/bash
# Usage:
#   sbatch <script>

#SBATCH -p normal
#SBATCH -n 1
#SBATCH -o output/task2.%j.out
#SBATCH -e output/task2.%j.err
#SBATCH -t 02:30:00
#SBATCH -A TG-ASC150014

dims="100 200 500 1000 2000 5000"
replications=10

echo "["
for dim in $dims
do
    bin/task2 $dim $replications
done
echo "]"

