nvidia-docker run -it --env=DISPLAY --env=QT_X11_NO_MITSHM=1 --volume=/tmp/.X11-unix:/tmp/.X11-unix:rw --name assistive_turtlebot3 --gpus=all --env="NVIDIA_DRIVER_CAPABILITIES=all" turtlebot3-nvidia
