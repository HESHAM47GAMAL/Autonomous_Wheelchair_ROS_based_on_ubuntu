#!/usr/bin/env python3
"""
   pid_velocity - takes messages on wheel_vtarget 
      target velocities for the wheels and monitors wheel for feedback
      
    Copyright (C) 2012 Jon Stephan. 
     
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
"""

import rospy
import roslib

from std_msgs.msg import Int16
from std_msgs.msg import Float32
from geometry_msgs.msg import Twist

if __name__ == "__main__":
    rospy.init_node("js")
    rospy.loginfo("My node has started.")
    
    rate = rospy.Rate(50) ##mean use frequency =2 hz
    
    pub_twist = rospy.Publisher('twist', Twist, queue_size=10)
    # pub =rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size=10)##queue_size :is used to help subscriber to follow data and don't miss any thing

    while not rospy.is_shutdown():
        message = Twist()
        message.linear.x =0.09
        message.angular.z =0
        pub_twist.publish(message)
        rate.sleep()