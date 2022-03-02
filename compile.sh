#!/usr/bin/env bash
# Copyright 2019 Xilinx Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

export GPUID=0
net=yolov3_tiny_1

#working directory
work_dir=$(pwd)
#path of quantized model
model_dir=quantize
#output directory
output_dir=compile


echo "Compiling network: ${net}"

vai_c_caffe   --prototxt=${model_dir}/yolov3-tiny-1-deploy.prototxt \
        --caffemodel=${model_dir}/yolov3-tiny-1-deploy.caffemodel \
        --output_dir=${output_dir} \
        --net_name=${net} \
        --options "{'mode':'normal'}" \
        --arch=${model_dir}/arch.json 2>&1 | tee ${output_dir}/compile.txt
