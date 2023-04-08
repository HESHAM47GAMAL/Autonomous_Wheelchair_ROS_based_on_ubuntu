#!/usr/bin/env python3


import rospy
from turtlesim.msg import Pose
from geometry_msgs.msg import Twist
from turtlesim.srv import SetPen

previous_x=0

def call_set_pen_service(r,g,b,width,off):
    try:
        setPen = rospy.ServiceProxy("/turtle1/set_pen",SetPen)
        response = setPen(r,g,b,width,off)
        rospy.loginfo(response)
    except rospy.ServiceException as e:
        rospy.logwarn(e)

def pose_callback(pose :Pose):
    message = Twist()
    if pose.x > 9 or pose.x < 2 or pose.y > 9 or pose.y < 2:
        message.linear.x = 1
        message.angular.z =1.4
        
    else:
        message.linear.x = 5
        message.angular.z =0
    pub.publish(message)

    global previous_x

    if pose.x >= 5.5  and previous_x <5.5:
        call_set_pen_service(255,0,0,3,0)
        rospy.loginfo("Set line to red color!")
    elif pose.x < 5.5 and previous_x >=5.5:
        call_set_pen_service(0,0,255,3,0)
        rospy.loginfo("Set line to blue color!")
    previous_x = pose.x


    

if __name__ =="__main__":
    rospy.init_node("turtle_controller")
    rospy.wait_for_service("/turtle1/set_pen")
    pub = rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size=10)
    sub = rospy.Subscriber("/turtle1/pose",Pose,callback = pose_callback)

    rospy.loginfo("My node has been started.")

    rospy.spin()