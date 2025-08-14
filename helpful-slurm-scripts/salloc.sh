# This command allocates resources for an interactive session. Useful for debugging.
salloc --nodes=1 --ntasks-per-node=1 --cpus-per-task=24 --gpus-per-node=12 --mem=1024G --time=1-00:00 --partition=<partition>
