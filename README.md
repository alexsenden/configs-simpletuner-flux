# SimpleTuner Configs

This repo contains a collection of useful configurations for different methods of training large diffusion models using [SimpleTuner](https://github.com/bghira/SimpleTuner).

Most of the configurations will be geared towards Flux, since that is the model that I use the most in my personal research, however contributions with other useful configurations are welcome!

Preprocessing images/captions into full datasets may be made easier through other tools I have made, such as my [VLM-Captioner](https://github.com/alexsenden/vlm-captioning) for captioning images, [dataset-flattener](https://github.com/alexsenden/dataset-flattener) or [captioned-image-dataset-loader](https://github.com/alexsenden/captioned-image-dataset-loader) for formatting local datasets for SimpleTuner or 🤗Huggingface respectively, or [image-preprocessing-tools](https://github.com/alexsenden/image-preprocessing-tools) for other assorted preprocessing tasks, such as tiling large images.

Additionally, the configs are setup for 1-16 NVIDIA V100-32GB GPUs. Other configurations may require some tinkering, or may benefit from capabilities afforded by modern GPUs, such as upgrading to BF16 precision (from FP16).

The configs should be plug-and-play with SimpleTuner (pending a few bug fix PRs); simply copy/paste the configs into `/configs/`, and run `train.sh`.

### Config Library

| Configuration                             | Type          | Performance Considerations | Default # GPUs |
| ----------------------------------------- | ------------- | -------------------------- | -------------- |
| [flux-full-finetune](/flux-full-finetune) | Full Finetune | DeepSpeed Stage 3          | 12             |
| -                                         | -             | -                          | -              |
