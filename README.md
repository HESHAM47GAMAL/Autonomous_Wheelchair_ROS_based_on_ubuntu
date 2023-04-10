# Autonomous_Wheelchair_ROS_based_on_ubuntu🦼🤖🔥

- [Description](#Description)
- [Steps](#Steps)
  - [Setup Laptop](#Setup-laptop)  
  - [Install ROS Noetic](#Install-ROS-Noetic)
  - [Create WorkSpace](#Create-WorkSpace)
- [Tools & setup](#Tools-&-setup)
- [IDE](#IDE)


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

## Install-ROS-Noetic

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


 
