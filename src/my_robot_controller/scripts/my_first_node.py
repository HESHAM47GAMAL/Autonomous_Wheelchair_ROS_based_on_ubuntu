#!/usr/bin/env python3
import rospy

if __name__ =="__main__":
    rospy.init_node("test_node")
    ###########################
    ##fist node created      ##
    ###########################

    # rospy.loginfo("Hello from test node")
    # rospy.logwarn("this is warning")
    # rospy.logerr("this is error")
    # rospy.sleep(1.0)

    # rospy.loginfo("End of program")

    ###########################
    ##second node created    ##
    ###########################
    rospy.loginfo("Test node start")
    rate =rospy.Rate(20)

    while not rospy.is_shutdown():
        rospy.loginfo("HELLO")
        rate.sleep()

