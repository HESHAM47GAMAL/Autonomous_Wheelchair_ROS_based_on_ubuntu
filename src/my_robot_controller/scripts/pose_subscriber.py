#!/usr/bin/env python3

import rospy
from turtlesim.msg import Pose

def pose_callback(msg):
    rospy.loginfo("("+str(msg.x)+", "+str(msg.y)+")")

if __name__ == "__main__":
    rospy.init_node("turtle_pose_subscriber")
    
    sub = rospy.Subscriber("/turtle1/pose",Pose,callback=pose_callback) ##here use callback not queue_size as here I will recieve data so when data reach will make callback 
    rospy.loginfo("node has been started")

    rospy.spin() ##used as can recieve messages from another nodes from multiple threads and make infinite loop until stop program