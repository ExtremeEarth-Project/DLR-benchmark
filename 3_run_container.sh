#!/bin/bash

if [ "$(sudo docker ps -q -f name=my_benchmark_gui_v1_1)" ]; then


    echo "Start container my_benchmark_gui_v1_1..."
    echo ""
    sudo docker exec my_benchmark_gui_v1_1 java -d64 -Xmx16386M -Xms1024M -jar /usr/src/eominer/KDD/lib/kdd.jar
    #sudo docker exec my_benchmark_gui_v1_1 java -d64 -Xmx16386M -Xms1024M -jar /usr/src/eominer/DMG/lib/dmg.jar

else
    echo "No my_benchmark_gui_v1_1 container!" 
    echo "Please run create_container.sh first..."
fi

