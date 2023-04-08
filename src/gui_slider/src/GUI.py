#!/usr/bin/env python3.8

import rospy 
from kivymd.app import MDApp
from kivy.lang import Builder

class TutorialApp(MDApp):


    def __init__(self, **kwargs):
        super().__init__(**kwargs)

        self.screen = Builder.load_file('/home/heshamgamal/catkin_ws_1/src/gui_slider/src/ros_gui.kv')

        def build(self):
            return self.screen



if __name__ == '__name__':
    rospy.init_node('simple_gui',anonymous= True)
    TutorialApp().run()
