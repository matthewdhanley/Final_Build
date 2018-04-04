# CU RMC 2018
## Software Repository

## Cloning the repository
On your local machine, run the following command
```
git clone https://github.com/cu-rmc/Final_Build.git
```
When you need to update your repository, simply run
```
git pull
```
This will cone the Final_Build repo to your local machine where you can make edits to the code. If you want to be safe
about your editing, create a new branch by executing a command similar to below
```
git checkout -b your-super-cool-branch
```
This will allow you to make changes to a copy of the master repository. If you don't understand branching, Google it!

## Running the robot
1. ssh into the robot. The ip should either be 10.0.0.2 or 10.0.0.3. If you neither works, plug in a monitor and run
```ifconfig``` to find the correct IP address. When the IP address changes, you have to update both your local ~/.bashrc file
as well as the robot's ~/.bashrc file. Find how to do this [below](#edit-bashrc). An example of an ssh call to get into
the robot is below:
```
ssh -X bepis@10.0.0.2
```
2. Make sure the code is up to date on the robot with ```git pull``` on the robot's computer in the ~/Final_Build directory
3. If you updated the code on the robot, run ```catkin_make``` in the ~/Final_Build directory to compile all the code
4. change directories into the ~/Final_Build/launch directory and launch the bot.launch file
```
cd ~/Final_Build/launch
roslaunch bot.launch
```
You should see no errors or warnings appear
5. Open a new terminal and change into your Final_Build directory. If your code was updated lately run ```catkin_make``` to 
compile the code.
6. SOURCE YOUR BASH. You need to do this every time you want to do anything with the code in the Final_Build directory.
Consider adding it to your ~/.bashrc to have it sourced every time you open a terminal.
```
cd Final_Build
source devel/setup.bashd
```
7. Change into the launch directory and launch the host.launch file (make sure that the bot.launch terminal is still open
and running). Connect an XBOX controller to a USB port.
```
cd Final_Build/launch
roslaunch host.launch
```

## Edit bashrc
### On your local machine
Your .bashrc should have the following commands at the end of it. Open ~/.bashrc in your favorite editor, such as vim or
gedit and make sure these lines are there. If they are not, add them.
```
source /opt/ros/kinetic/setup.bash
export ROS_MASTER_URI='http://10.0.0.3:11311'
export ROS_IP='10.0.0.2'
```

Note that ```ROS_IP``` should be set equal to YOUR IP ADDRESS. Find it by running ```ifconfig```. Make sure that you are on
the same wifi as the robot. Your IP address should have the same format as the robot. ```ROS_MASTER_URI``` should be set 
equal to the robot's IP address, the same one you used to ssh in the first step.

### On the robot
If the IP addresses at the bottom of the .bashrc file on the robot do not match the robot's IP address, change them
in the robot's .bashrc so that they do match. Both IP addresses seen in the .bashrc on the robot should be the same and 
they should both be the IP address of the robot.

## Installing ROS
Make sure you have [ROS installed](http://wiki.ros.org/kinetic/Installation/Ubuntu). 
 I highly recommend doing this on Ubuntu 16. Also, you want ```ros-kinetic-desktop-full```
 
## Required packages
These lines will tell you how to download some packages that are required to be on your system to run the robot. Add 
dependencies if you see fit.
```
sudo apt-get install ros-kinetic-joy ros-kinetic-actionlib ros-kinetic-smach
```
