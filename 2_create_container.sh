#!/bin/bash

if [ "$(docker ps -q -f name=my_benchmark_gui_v1_1)" ]; then
        echo "Remove already existed container"
        sudo docker stop my_benchmark_gui_v1_1
        sudo docker rm my_benchmark_gui_v1_1
fi


######### Linux ##########
echo "Create container my_benchmark_gui_v1_1..."
echo "enter the mount path which contains Sentinel products .."
read inputFolder

# Setting
#export DISPLAY=:0

#xhost +local:docker
Displaynumber=-1

# Create container
docker run -d \
      --name my_benchmark_gui_v1_1 \
      -e DISPLAY=:$Displaynumber \
      --memory="16g" \
      --memory-swap="8g" \
      --ipc=host \
      --cap-drop=ALL \
      --security-opt=no-new-privileges \
      --mount type=bind,source=$inputFolder,target="/var/local/S_product" \
      weiyaodlr/dlr_eo_benchmark:v1.1


