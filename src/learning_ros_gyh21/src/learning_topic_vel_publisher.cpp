#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

int main(int argc, char **argv)
{
    //ros节点初始化并创建句柄
    ros::init(argc, argv, "learn_topic_vel_puber");
    ros::NodeHandle nh;

    ros::Publisher turtle_vel_pub = nh.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 10);

    ros::Rate loop_rate(10);

    int count = 0;
    while (ros::ok())
    {
        //初始化数据
        geometry_msgs::Twist vel_msg;
        vel_msg.linear.x = 0.5;
        vel_msg.angular.z = 0.2;
        //发送
        turtle_vel_pub.publish(vel_msg);

        ROS_INFO("Publish turtle vel command[%0.2f m/s %0.2f rad/s]", vel_msg.linear.x, vel_msg.angular.z);
        loop_rate.sleep();

        // 初始化，注册，封装数据，发送数据，循环
    }

    return 0;
}