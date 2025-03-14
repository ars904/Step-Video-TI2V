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

torchrun --nproc_per_node $parallel run_parallel --model_dir $model_dir --vae_url $url --caption_url $url  --ulysses_degree  $parallel --prompt "笑起来" --first_image_path ./assets/demo.png --infer_steps 50  --cfg_scale 9.0 --time_shift 13.0
```




## Motion Control

<table border="0" style="width: 100%; text-align: center; margin-top: 1px;">
  <tr>
    <td><video src="https://github.com/user-attachments/assets/3c6a5c8d-ada4-484f-8f3d-f2a99ef18a4b" width="30%" controls autoplay loop muted></video></td>
    <td><video src="https://github.com/user-attachments/assets/90c608d9-b3cf-40fa-b4ee-21b682c840ae" width="30%" controls autoplay loop muted></video></td>
    <td><video src="https://github.com/user-attachments/assets/e58d3a6b-0076-4587-aac5-6911ba4c776d" width="30%" controls autoplay loop muted></video></td>
  </tr>
</table>

## Motion Level Control

<table border="0" style="width: 100%; text-align: center; margin-top: 10px;">
  <tr>
    <th style="width: 33%;">Motion = 2</th>
    <th style="width: 33%;">Motion = 5</th>
    <th style="width: 33%;">Motion = 10</th>
  </tr>
  <tr>
    <td><video src="https://github.com/user-attachments/assets/0d6b1813-2bf0-462a-8ad4-c0583d83afc5" width="33%" controls autoplay loop muted></video></td>
    <td><video src="https://github.com/user-attachments/assets/33699654-93cc-4205-8a47-93ece4282f72" width="33%" controls autoplay loop muted></video></td>
    <td><video src="https://github.com/user-attachments/assets/52d73eb5-2c68-4de3-9019-516243804b2c" width="33%" controls autoplay loop muted></video></td>
  </tr>
</table>

<table border="0" style="width: 100%; text-align: center; margin-top: 10px;">
  <tr>
    <th style="width: 33%;">Motion = 2</th>
    <th style="width: 33%;">Motion = 5</th>
    <th style="width: 33%;">Motion = 20</th>
  </tr>
  <tr>
    <td><video src="https://github.com/user-attachments/assets/31c48385-fe83-4961-bd42-7bd2b1edeb19" width="33%" controls autoplay loop muted></video></td>
    <td><video src="https://github.com/user-attachments/assets/913a407e-55ca-4a33-bafe-bd5e38eec5f5" width="33%" controls autoplay loop muted></video></td>
    <td><video src="https://github.com/user-attachments/assets/119a3673-014f-4772-b846-718307a4a412" width="33%" controls autoplay loop muted></video></td>
  </tr>
</table>

The default motion_score = 5 is suitable for general use. If you need more stability, set motion_score = 2, though it may be less responsive to certain movements. For greater movement flexibility, you can use motion_score = 10 or motion_score = 20 to enable more intense actions. Feel free to customize the motion_score based on your creative needs to fit different use cases.

## Camera Control

<table border="0" style="width: 100%; text-align: center; margin-top: 1px;">
  <tr>
    <th style="width: 33%;">镜头环绕</th>
    <th style="width: 33%;">镜头推进</th>
    <th style="width: 33%;">镜头拉远</th>
  </tr>
  <tr>
    <td><video src="https://github.com/user-attachments/assets/257847bc-5967-45ba-a649-505859476aad" height="30%" controls autoplay loop muted></video></td>
    <td><video src="https://github.com/user-attachments/assets/d310502a-4f7e-4a78-882f-95c46b4dfe67" height="30%" controls autoplay loop muted></video></td>
    <td><video src="https://github.com/user-attachments/assets/f6426fc7-2a18-474c-9766-fc8ae8d8d40d" height="30%" controls autoplay loop muted></video></td>
  </tr>
</table>

<table border="0" style="width: 100%; text-align: center; margin-top: 1px;">
  <tr>
    <th style="width: 33%;">镜头固定</th>
    <th style="width: 33%;">镜头左移</th>
    <th style="width: 33%;">镜头右摇</th>
  </tr>
  <tr>
    <td><video src="https://github.com/user-attachments/assets/f78f76a0-afe1-41b1-9914-f2f508c6ea50" width="30%" controls autoplay loop muted></video></td>
    <td><video src="https://github.com/user-attachments/assets/3894ec0f-d483-41fe-8331-68b6e5bf6544" width="30%" controls autoplay loop muted></video></td>
    <td><video src="https://github.com/user-attachments/assets/9de3aa20-c797-4dac-bef1-ee064ed96ed4" width="30%" controls autoplay loop muted></video></td>
  </tr>
</table>

## Visual Effects

## Real-world

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
| TI2V-30B       |     x      x        | Supports 540P


## 1. Introduction
We present Step-Video-TI2V, a state-of-the-art text-driven image-to-video generation model with 30B parameters, capable of generating videos up to 102 frames
based on both text and image inputs. We build Step-Video-TI2V-Eval as a new benchmark for the text-driven image-to-video task and compare Step-Video-TI2V
with open-source and commercial TI2V engines using this dataset. Experimental results demonstrate the state-of-the-art performance of Step-Video-TI2V in the
image-to-video generation task. Both Step-Video-TI2V and Step-Video-TI2V-Eval are available.

## 2. Model Summary
Step-Video-TI2V based on Step-Video-T2V. To incorporate the image condition as the first frame of the generated video, we encode it into latent representations using Step-Video- T2V’s Video-VAE and concatenate them along the channel dimension of the video latent. Additionally, we introduce a motion score condition, enabling users to control the dynamic level of the video generated from the image condition. Figure 1 shows an overview of our framework, highlighting these two modifications to the pre-trained T2V model. 

<p align="center">
  <img width="80%" src="assets/model_architecture.png">
</p>


