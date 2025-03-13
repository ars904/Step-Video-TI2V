![image](https://github.com/user-attachments/assets/b40274e3-ebe8-4e4b-afb8-887e66332c8d)# Step-Video-TI2V

<p align="center">
  <img src="assets/logo.png"  height=100>
</p>
<div align="center">
  <a href="https://yuewen.cn/videos"><img src="https://img.shields.io/static/v1?label=Step-Video&message=Web&color=green"></a> &ensp;
  <a href="https://arxiv.org/abs/2502.10248"><img src="https://img.shields.io/static/v1?label=Tech Report&message=Arxiv&color=red"></a> &ensp;
  <a href="https://x.com/StepFun_ai"><img src="https://img.shields.io/static/v1?label=X.com&message=Web&color=blue"></a> &ensp;
</div>

<div align="center">
  <a href="https://huggingface.co/stepfun-ai/stepvideo-ti2v"><img src="https://img.shields.io/static/v1?label=Step-Video-T2V&message=HuggingFace&color=yellow"></a> &ensp;
</div>

## 🔥🔥🔥 News!!
* Mar 17, 2025: 👋 We release the inference code and model weights of Step-Video-Ti2V. [Download](https://huggingface.co/stepfun-ai/stepvideo-ti2v)
* Mar 17, 2025: 🎉 We have made our technical report available as open source. [Read](https://arxiv.org/abs/2502.10248)


```bash
git clone https://github.com/stepfun-ai/Step-Video-TI2V.git
conda create -n stepvideo python=3.10
conda activate stepvideo

cd StepFun-StepVideo
pip install -e .
```

###  🚀 4.2. Inference Scripts
```bash
python api/call_remote_server.py --model_dir where_you_download_dir &  ## We assume you have more than 4 GPUs available. This command will return the URL for both the caption API and the VAE API. Please use the returned URL in the following command.

parallel=4  # or parallel=8
url='127.0.0.1'
model_dir=where_you_download_dir

torchrun --nproc_per_node $parallel run_parallel --model_dir $model_dir --vae_url $url --caption_url $url  --ulysses_degree  $parallel --prompt "笑起来" --infer_steps 15  --cfg_scale 5.0 --time_shift 17.0
```

## Motion Control

<table border="0" style="width: 100%; text-align: center; margin-top: 1px;">
  <tr>
    <td><video src="https://github.com/user-attachments/assets/58173d59-e98d-4559-8f36-b0180a0017ef" width="100%" controls autoplay loop muted></video></td>
    <td><video src="https://github.com/user-attachments/assets/41f58d57-18ab-4ff3-acab-f492ec36ab30" width="100%" controls autoplay loop muted></video></td>
    <td><video src="https://github.com/user-attachments/assets/a27c36ad-769c-4426-89a7-f5ab409478ad" width="100%" controls autoplay loop muted></video></td>
  </tr>
</table>

## Camera Control

## Special Effects

## Real-world
 <tr>
    <td><video src="https://github.com/user-attachments/assets/73ebf086-ae99-4f81-a0ca-bf2c1a44109f" width="100%" controls autoplay loop muted></video></td>
    <td><video src="https://github.com/user-attachments/assets/b7c197c9-6846-4e58-8555-0f2a1f72fd18" width="100%" controls autoplay loop muted></video></td>
    <td><video src="https://github.com/user-attachments/assets/13463dcc-c5ee-470a-81d1-fe39fc229fd8" width="100%" controls autoplay loop muted></video></td>
  </tr>
  <tr>
    <td><video src="https://github.com/user-attachments/assets/e6247a57-cd75-4989-bbd1-c896a95679b6" width="100%" controls autoplay loop muted></video></td>
    <td><video src="https://github.com/user-attachments/assets/e8642b3c-4114-432b-a72b-140d830f8f59" width="100%" controls autoplay loop muted></video></td>
    <td><video src="https://github.com/user-attachments/assets/6d893dad-556d-4527-a882-666cba3d10e9" width="100%" controls autoplay loop muted></video></td>
  </tr>

## Anime-style

## Table of Contents

1. [Introduction](#1-introduction)
2. [Model Summary](#2-model-summary)
3. [Model Download](#3-model-download)
4. [Model Usage](#4-model-usage)
5. [Benchmark](#5-benchmark)
6. [Online Engine](#6-online-engine)
7. [Citation](#7-citation)
8. [Acknowledgement](#8-ackownledgement)


#### Model Download

| Models        |                       Download Link                                           |    Notes                      |
| --------------|-------------------------------------------------------------------------------|-------------------------------|
| T2V-14B       |     x      x        | Supports both 480P and 720P
| I2V-14B-720P  |     x   x     | Supports 720P
| I2V-14B-480P  |      x    x     | Supports 480P
| T2V-1.3B      |      x     x        | Supports 480P
