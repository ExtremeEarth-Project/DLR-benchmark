## Version
Date: 2021.03.05
Tool v1.1

Date: 2021.08.05
Readme file update

##
## Prerequisite

docker installation on local Linux machine.

If not, for linux Ubuntu system, run the following bash script to install docker:

/bash
* . 0_install_docker.sh

##
## Run benchmark_gui

For the benchmark tool, run the following bash script in order:

/bash
* . 1_install_benchmark_gui.sh
* . 2_create_container.sh
* . 3_run_container.sh
* . 4_remove_container.sh

##
## Notice

After creating the container, wait for ~ 5 seconds until the container is correctly configured. <br />
Otherwise, if start to run the container immediately, may get this issue:
	error connecting to the database ..

##
## Inside docker

### Input folder

Mount directory in container:
/var/local/S_product


### Output folder

Output image patches in container:
/var/local/Output


### Annotation folder

Save annotations in container:
/var/local/Annotation

### Command line mode in docker container 

docker exec -ti my_benchmark_gui_v1_1 /bin/bash


### Database access in docker container command line mode

mclient -d benchmark

for example, <br />
sql> copy select * from annotation into '/var/local/Annotation/annotation.csv' using delimiters ',', '\n', '"';


### Transfer annotation to local machine

docker cp my_benchmark_gui_v1_1:/var/local/Annotation/annotation.csv /path/to/local/Annotation/annotation.csv


### Sentinel-1 product not appear in folder mounted in docker
change access permission

chmod -R 775 /path/to/local/S1_product


### S2 procedure stops at message
 ptileBottom: ****.******* ****.******* ****.******* <br />
 ptileTop: ****.******* ****.******* ****.******* 

Please restart the docker container.

### Meet bugs

First try, restart docker; <br />
otherwise, please contact: wei.yao@dlr.de

## Licensing
MIT license

Copyright (c) 2021 DLR

## Include Credits
We are releasing software packages which were developed in the project ExtremeEarth, , but could be generally useful for Earth observation research. If you find them useful, please consider citing our work. These include:
@INPROCEEDINGS{9554198,
  author={Yao, Wei and Dumitru, Octavian and Datcu, Mihai},
  booktitle={2021 IEEE International Geoscience and Remote Sensing Symposium IGARSS}, 
  title={An Active Learning Tool for the Generation of Earth Observation Image Benchmarks}, 
  year={2021},
  volume={},
  number={},
  pages={5720-5723},
  doi={10.1109/IGARSS47720.2021.9554198}}

tbc
	
