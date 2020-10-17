#include <ros/ros.h>
#include <std_msgs/Int64.h>
#include <iostream>

void callback(const std_msgs::Int64 &cnt)
{
    // ROS_INFO("entry_time");
    std::cout << "----"
              << ",entry," << cnt.data;
    ros::Duration(2).sleep();
    std::cout << ",quit," << cnt.data << ",----" << std::endl;
    // ROS_INFO("quit _time");
}

// void callback(const std_msgs::Int64::ConstPtr cnt)
// {
//     // ROS_INFO("entry_time");
//     std::cout << "----"
//               << ",entry," << cnt->data;
//     ros::Duration(2).sleep();
//     std::cout << ",quit," << cnt->data << ",----" << std::endl;
//     // ROS_INFO("quit _time");
// }

int main(int argc, char **argv)
{

    ros::init(argc, argv, "cb_test_suber");
    ros::AsyncSpinner spinner(4);
    ros::NodeHandle nh;
    ros::Subscriber suber = nh.subscribe("/ros_test/cb_test_puber", 10, callback);

    spinner.start();
    // ros::spin();
    ros::waitForShutdown();
    spinner.stop();
}