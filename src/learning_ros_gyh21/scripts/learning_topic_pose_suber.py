#! /usr/bin/python
# -*-coding: utf-8-*-
import rospy
from turtlesim.msg import Pose


def callback(msg):
    rospy.loginfo('pose: x:%0.6f,y:%0.6f', msg.x, msg.y)


def pose_suber():
    rospy.init_node('pose_suber_py', anonymous=True)
    pose_suber = rospy.Subscriber('/turtle1/pose', Pose, callback)
    rospy.spin()


if __name__ == '__main__':
    pose_suber()
