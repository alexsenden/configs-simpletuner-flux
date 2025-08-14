# Flux Full Finetune - DeepSpeed ZeRO Stage 3

These config files can be copy/pasted into SimpleTuner's `/configs/` directory, and training can be started with by running `train.sh`.

This config will perform a full finetune of the Flux.1-dev model using your data. Flux.1-dev is a large diffusion model (12B parameters), and therefore cannot be fully trained on single GPUs with less than 80GB VRAM.

This configuration allows for training on an array of smaller GPUs (by default, 12x NVIDIA V100-32GB) through DeepSpeed ZeRO Stage 3. Notably, DeepSpeed can only be used for full finetunes, and cannot be used for training LoRAs. This seems to be much faster than FSDP when training with an equal number of GPUs (8-12).

### Number of GPUs

This config is set up for 12x 32GB GPUs by default. The number of GPUs can be configured by changing `TRAINING_NUM_PROCESSES` in `config.env`, and `num_processes` in `accelerate_config.yaml`.

This model can be trained with less GPUs and less total VRAM, however training may take longer. Training may also be sped up by increasing the number of GPUs.

### Work for the User

Users of these configs must fill in the following fields:

#### config.json

-   `data_backend_config`: Fill in your choice of data backend (preconfigured options are: < hf | local >)

#### multidatabackend-hf.json (if selected)

-   `id`: Name of the dataset (for your/internal use)
-   `dataset_name`: `<user>/<dataset_name>` of the dataset on 🤗Huggingface

#### multidatabackend-local.json (if selected)

-   `id`: Name of the dataset (for your/internal use)
-   `instance_data_dir`: Local path to your image dataset.
