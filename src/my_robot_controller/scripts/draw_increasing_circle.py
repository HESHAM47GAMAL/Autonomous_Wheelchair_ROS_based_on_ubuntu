#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist
angular =5
if __name__ == "__main__":
    rospy.init_node("drawCircle")
    rospy.loginfo("My node has started.")
    
    rate = rospy.Rate(2) ##mean use frequency =2 hz

    pub =rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size=10)##queue_size :is used to help subscriber to follow data and don't miss any thing

    while not rospy.is_shutdown():
        angular = angular -0.2
        message = Twist()
        message.linear.x =3
        message.angular.z = angular
        pub.publish(message)
        rate.sleep()


