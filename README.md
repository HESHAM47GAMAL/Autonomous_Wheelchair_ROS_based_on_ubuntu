# Autonomous_Wheelchair_ROS_based_on_ubuntu🦼🤖🔥

- [Description](#Description)
- [Steps](#Steps)
  - [Setup Laptop](#Setup-laptop)  
  - [Install ROS Noetic](#Install-ROS-Noetic)
  - [Create WorkSpace](#Create-WorkSpace)
  - [Create Package](#Create-Package)
- [Packages install](#Packages-install)
- [Tools & setup](#Tools-&-setup)
- [IDE](#IDE)
- [Create interactive web](#Create-interactive-web)
  - [Description web](#Description-web)
  - [install](#install)
  - [create React](#create-React)
  


# Description
<p> ⚡ Our Graduation project help people with disabilities and old people who search for luxurious life </p>
<p> ⚡ This chair indoor 🏚and provide some feature outdoor🛣 </p>
<p> ⚡ our chair has touch screen 📱 that contain Map(2D , 3D) as GUI for Apartment and then chair move to target place autonomous avoiding any obastcle and will see always current position in screen and during movement if used map changed compared to current arrangement of Apartment Map will update automatic   </p>
<p> ⚡GUI has configuration to add routine as save user effort to select every time sequence of target selection </p>
<p> ⚡ So how work our ninja wheelchair🐱‍👤  </p>
<p> ⚡ 1.At first chair as setup scan want apartment to create map that 
  
# Steps
<p>⚡Here will talk about every step literally from setup to make project work 🤩</p>

## Setup Laptop
<p> ⚡If you as almost of people use windows 🙄 ,You will need Ubuntu version 20.04 as project work on OS linux </p>
<p> ⚡As told you I can't let you Dispersed I will attack link that I and My team used  </p>
<p> ⚡and depend on your machine is  UEFI  GPT will follow one link of them <a href="https://www.youtube.com/watch?v=aKKdiqVHNqw" >🔗Press</a> or <a href="https://www.youtube.com/watch?v=-iSAyiicyQY&t=18s" >🔗Press</a> </p>

## Install ROS Noetic

<p> 1.Setup your sources.list

```console 
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
```

<p> 2.Set up your keys

```console 
sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
```

<p> 3.Installation

```conole 
sudo apt update
```

<p>Now pick how much of ROS you would like to install.
<p> 3.1Desktop-Full Install: (Recommended): Everything in Desktop plus 2D/3D simulators and 2D/3D perception packages

```console
sudo apt install ros-noetic-desktop-full
```

<p> 3.2 Desktop Install: Everything in ROS-Base plus tools like rqt and rviz

```console
sudo apt install ros-noetic-desktop
```

<p> 3.3 ROS-Base: (Bare Bones) ROS packaging, build, and communication libraries. No GUI tools.

```console
sudo apt install ros-noetic-ros-base
```

<p> 4.setup Enviroment -> open terminal and write gedit ~/.bashrc -> will open text editor and put this line 

  ```console 
  source /opt/ros/noetic/setup.bash
  ```

  <p> to make system able to see ROS 

  OR 

  ```console 
    echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
  ```
    
 <p> for more info for installation <a href="http://wiki.ros.org/noetic/Installation/Ubuntu" >🔗Press</a>

# Create WorkSpace
   
<p> open terminal "Ctrl + Alt + T" then write
  
```console 
  ls 
  mkdir catkin_ws/
  cd catkin_ws/
  ls
  mkdir src
  ls
  catkin_make
```
  
<p>After doing this you should put setup.bash in source so do 
  
 ```console 
  gedit ~/.bashrc 
  ```
  
  then will open text editor ,👀️👀️👀️👀️👀️ try to put this line after  "source /opt/ros/noetic/setup.bash " that added above 
  
  ```console 
  source ~/catkin_ws/devel/setup.bash
  ```
  
 # Create Package
  open terminal in directory ~/catkin_ws/src and write
  
  ```console 
  catkin_create_pkg my_package rospy roscpp turtlesim
  ```
  
  then go to ~/catin_ws and open terminal and write
  
  ```console
  catkin_make
  ```
  
 # Packages install
 <p> As we use Arduino in transmitting speed and get data of Encoder we need to install rosserial packages
 
 ```console
 sudo apt-get install ros-noetic-rosserial
 sudo apt-get install ros-noetic-rosserial-msgs
 sudo apt-get install ros-noetic-rosserial-arduino  
 sudo apt-get install ros-noetic-rosserial-python
 sudo apt-cache search ros-noetic-rosserial
 ```
 <p> So you need to install Arduino IDE 
 
 ```console
 sudo apt update
 sudo apt upgrade
 mkdir arduino
 cd arduino/
 wget https://downloads.arduino.cc/arduino-1.8.15-linux64.tar.xz
 tar -xvf ./arduino-1.8.15-linux64.tar.xz
 cd arduino-1.8.15/
 sudo ./install.sh
 ```
 <p> As we create map 3D we need to install RTAB map (that we use SLAM)  
 
 ```console
 sudo apt-get install ros-noetic-rtabmap-ros
 ```
 
 # Create interactive web 
  ## Description web
  <p> Here try to load data base of map created in web page to be interactive instead using RVIZ to use by end user  , I will do this using roslibjs
  
  ## install 
  
  ```console 
  sudo apt-get install ros-noetic-rosbridge-server
  sudo apt install npm
  ```
  
  <p> if you face problem that  current version of Node less than 14 ,can check with this line 
  
  ```console
  node -v
  ```
  
  so do following lines 
  
  ```console 
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
  nvm install 14
  nvm use 14
  ```
  
  
  ## create React
  ```console
  npx craete-react-app react-ros-robot
  ```
  
 
 
