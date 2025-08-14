# Install prerequisites for SimpleTuner for Linux/NVIDIA Slurm systems.

module load cuda/12.4.1 arch/avx2 gcc/13.2.0 python/3.12.9
git clone --branch=release https://github.com/bghira/SimpleTuner.git
cd SimpleTuner
virtualenv ~/env/simpletuner
source ~/env/simpletuner/bin/activate
pip install poetry
poetry config virtualenvs.create false
poetry install
