#!/bin/bash
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full
sudo apt-get install ros-desktop-full
./rmc_ros_alias.sh
DIR=basename "$PWD"
if [ "$DIR" != "Final_Build" ]; then
    cd ..
    echo "TRUE"
fi
git submodule update --init --recursive
rm -rf build/
rm -rf devel/
catkin_make
