################## README ####################
### Date: 2021.03.05
### Tool v1.1
###
### Readme file update
### Date: 2021.08.05

###
### Prerequisite:

docker installation on local Linux machine.

If not, for linux Ubuntu system, run the following bash script to install docker:

<bash>
. 0_install_docker.sh

###
### benchmark_gui

For the benchmark tool, run the following bash script in order:

<bash>
. 1_install_benchmark_gui.sh
. 2_create_container.sh
. 3_run_container.sh
. 4_remove_container.sh

###
### Notice

After creating the container, wait for ~ 5 seconds until the container is correctly configured.
Otherwise, if start to run the container immediately, may get this issue:
	error connecting to the database ..

###
### Input folder

Mount directory in container:
/var/local/S_product

###
### Output folder

Output image patches in container:
/var/local/Output

###
### Annotation folder

Save annotations in container:
/var/local/Annotation


###
### command line mode in docker container 

docker exec -ti my_benchmark_gui_v1_1 /bin/bash

###
### database access in docker container command line mode

mclient -d benchmark

for example,
sql> copy select * from annotation into '/var/local/Annotation/annotation.csv' using delimiters ',', '\n', '"';

###
### Transfer annotation to local machine

docker cp my_benchmark_gui_v1_1:/var/local/Annotation/annotation.csv /path/to/local/Annotation/annotation.csv

###
### Sentinel-1 product not appear in folder mounted in docker
### change access permission

chmod -R 775 /path/to/local/S1_product

###
### S2 procedure stops at error message:
### ptileBottom: ****.******* ****.******* ****.******* 
### ptileTop: ****.******* ****.******* ****.******* 

Please restart the docker container.

###
### Bug

First try, restart docker;
otherwise, please contact: wei.yao@dlr.de
	
