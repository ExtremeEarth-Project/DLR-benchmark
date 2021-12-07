#!/bin/bash

if [ "$(docker ps -q -f name=my_benchmark_gui_v1_1)" ]; then

    echo "Remove container my_benchmark_gui_v1_1!"
    docker stop my_benchmark_gui_v1_1
    docker rm my_benchmark_gui_v1_1
else
    echo "No container yet..."
fi

