#! /usr/bin/python
# -*- coding: utf-8 -*-
# 上边这句，python3不需要加
# 但是目前我们只能用python2,怎么用python3还得研究一下
import rospy
from geometry_msgs.msg import Twist

def vel_publisher():
    rospy.init_node('learning_topic_vel_puber',anonymous=True)
    turtle_vel_puber = rospy.Publisher('/turtle1/cmd_vel',Twist,queue_size=10)

    rate = rospy.Rate(10)
    while not rospy.is_shutdown():
        vel_msg = Twist()
        vel_msg.linear.x = 0.5
        vel_msg.angular.z = 0.2

        turtle_vel_puber.publish(vel_msg)
        rospy.loginfo('Publish turtle velocity command[%0.2f m/s, %0.2f rad/s]',vel_msg.linear.x,vel_msg.angular.z)

        rate.sleep()

if __name__ == '__main__':
    try:
        vel_publisher()
    except rospy.ROSInterruptException:
        pass