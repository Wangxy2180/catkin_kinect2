#include <ros/ros.h>
#include <std_srvs/Trigger.h>
#include <geometry_msgs/Twist.h>
// 执行/turtle_command服务，数据类型std_srvs/Trigger，
// 这个是ros提供的针对服务的标准定义

//回调函数会用到puber，所以创建为全局的
ros::Publisher turtle_vel_pub;
//flag，默认为停止
bool pubCommand = false;

// service回调函数，输入参数req，输出res
bool commandCallback(std_srvs::Trigger::Request &req, std_srvs::Trigger::Response &res)
{
    pubCommand = !pubCommand;
    ROS_INFO("publish vel command?[%s]",pubCommand==true?"Yes":"No");

    //设置反馈数据
    res.success = true;
    res.message = "change turtle command state";

    return true;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "turtle_command_server");
    ros::NodeHandle nh;
    // 创建一个名为/turtle_command的server，注册回调函数commandCallback
    ros::ServiceServer command_service = nh.advertiseService("/turtle_command_service", commandCallback);

    // 创建一个puber，发布名为/turtle1/cmd_vel的topic,消息类型为geometry_msgs:;Twist
    turtle_vel_pub = nh.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 10);

    ROS_INFO("Ready to recv turtle command");

    ros::Rate loop_rate(10);

    while (ros::ok())
    {
        // 查看一次回调函数队列
        ros::spinOnce();

        // 如果是true，则发布运动指令
        if (pubCommand)
        {
            geometry_msgs::Twist msg;
            msg.linear.x = 0.5;
            msg.angular.z = 0.2;
            turtle_vel_pub.publish(msg);
        }
        loop_rate.sleep();
    }
}