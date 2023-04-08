#!/usr/bin/env python3


import rospy
from turtlesim.msg import Pose
from geometry_msgs.msg import Twist
from turtlesim.srv import SetPen

previous_x_1=0
previous_x_2=0
def call_set_pen_service_1(r,g,b,width,off):
    try:
        setPen_1 = rospy.ServiceProxy("/turtle1/set_pen",SetPen)
        response_1 = setPen_1(r,g,b,width,off)
        rospy.loginfo(response_1)
    except rospy.ServiceException as e:
        rospy.logwarn(e)

def pose_callback_1(pose :Pose):
    message = Twist()
    if pose.x > 9 or pose.x < 2 or pose.y > 9 or pose.y < 2:
        message.linear.x = 1
        message.angular.z =1.4
        
    else:
        message.linear.x = 5
        message.angular.z =0
    pub_1.publish(message)

    global previous_x_1

    if pose.x >= 5.5  and previous_x_1 <5.5:
        call_set_pen_service_1(255,0,0,3,0)
        rospy.loginfo("Set line to red color!")
    elif pose.x < 5.5 and previous_x_1 >=5.5:
        call_set_pen_service_1(0,0,255,3,0)
        rospy.loginfo("Set line to blue color!")
    previous_x_1 = pose.x

def call_set_pen_service_2(r,g,b,width,off):
    try:
        setPen_2 = rospy.ServiceProxy("/turtle1/set_pen",SetPen)
        response_2 = setPen_2(r,g,b,width,off)
        rospy.loginfo(response_2)
    except rospy.ServiceException as e:
        rospy.logwarn(e)

def pose_callback_2(pose :Pose):
    message = Twist()
    if pose.x > 9 or pose.x < 2 or pose.y > 9 or pose.y < 2:
        message.linear.x = 1
        message.angular.z =1.4
        
    else:
        message.linear.x = 5
        message.angular.z =0
    pub_2.publish(message)

    global previous_x_2

    if pose.x >= 5.5  and previous_x_2 <5.5:
        call_set_pen_service_2(255,0,0,3,0)
        rospy.loginfo("Set line to red color!")
    elif pose.x < 5.5 and previous_x_2 >=5.5:
        call_set_pen_service_2(0,0,255,3,0)
        rospy.loginfo("Set line to blue color!")
    previous_x_2 = pose.x


    

if __name__ =="__main__":
    rospy.init_node("turtle_controller")
    # number_of_turtle = 4
    # for turtle_index in range(1,number_of_turtle+1):
    #     rospy.wait_for_service("/turtle%s/set_pen"%str(turtle_index))
    #     pub = rospy.Publisher("/turtle%s/cmd_vel"%str(turtle_index),Twist,queue_size=10)
    #     sub = rospy.Subscriber("/turtle%s/pose"%str(turtle_index),Pose,callback = pose_callback)
   
    rospy.wait_for_service("/turtle1/set_pen")
    pub_1 = rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size=10)
    sub_1 = rospy.Subscriber("/turtle1/pose",Pose,callback = pose_callback_1)

    rospy.wait_for_service("/turtle2/set_pen")
    pub_2 = rospy.Publisher("/turtle2/cmd_vel",Twist,queue_size=10)
    sub_2 = rospy.Subscriber("/turtle2/pose",Pose,callback = pose_callback_2)


    rospy.loginfo("My node has been started.")

    rospy.spin()