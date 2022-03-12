## Run the docker container
Docker run:

    ./run-nvidia.sh

oh no! `No protocol specified`

Expose xhost from host terminal (not secure):

    xhost +local:root

Container is not running:

    docker start assistive_turtlebot3

Open a new terminal:

    docker exec -it assistive_turtlebot3 bash

## Setup ROS env

    echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
    source ~/.bashrc

## Setup turtlebot3 simulation

In the container:

    cd ~/ar_ws
    wstool init src ./assistive_robotics.rosinstall
    catkin_make

turtlebot3 env setup:

    echo "source ~/ar_ws/devel/setup.bash --extend
    export ROS_PACKAGE_PATH=~/ar_ws/src:/opt/ros/melodic
    export ROS_WORKSPACE=~/ar_ws
    export PACKAGE_CONFIG_PATH=~/ar_ws/devel/lib/pkgconfig:/opt/ros/melodic/lib/pkgconfig
    export ROS_LOG_DIR=/dev/shm/rosLogs
    export ROS_MASTER_URI=http://$HOSTNAME:11311
    #Turtlebot3 setup
    export TURTLEBOT3_MODEL=waffle_pi
    export ROS_HOSTNAME=$HOSTNAME" >> ~/.bashrc
    
    source ~/.bashrc
