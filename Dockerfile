FROM nvidia/cuda:11.4.0-cudnn8-devel-ubuntu18.04

ENV DEBIAN_FRONTEND=noninteractive

# ROS Melodic
RUN apt update && apt install -y lsb-release && \
	sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' && \
	apt install -y curl && \
	curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add - && \
	apt update && \
	apt install -y ros-melodic-desktop-full

# additional ROS packages
RUN apt update && \
	apt install -y ros-melodic-joy \
	ros-melodic-teleop-twist-joy \
	ros-melodic-teleop-twist-keyboard \
	ros-melodic-laser-proc \
	ros-melodic-rgbd-launch \
	ros-melodic-depthimage-to-laserscan \
	ros-melodic-interactive-markers \
	ros-melodic-rosserial-arduino \
	ros-melodic-rosserial-python \
	ros-melodic-rosserial-server \
	ros-melodic-rosserial-client \
	ros-melodic-rosserial-msgs \
	ros-melodic-amcl \
	ros-melodic-gmapping \
	ros-melodic-map-server \
	ros-melodic-move-base \
	ros-melodic-navigation \
	ros-melodic-urdf \
	ros-melodic-xacro \
	ros-melodic-compressed-image-transport \
	ros-melodic-rqt* \
	ros-melodic-ros-control* \
	ros-melodic-control* \
	ros-melodic-moveit* \
	ros-melodic-turtlebot3 \
	ros-melodic-turtlebot3-msgs \
	ros-melodic-dynamixel-sdk
