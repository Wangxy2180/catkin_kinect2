#include <ros/ros.h>
#include <turtlesim/Pose.h>

// msg以一个常指针的形式指向turtlesim::Pose的数据内容，通过调用即可得到位置信息
void callback(const turtlesim::Pose::ConstPtr msg)
{
    // ROS_INFO("turtle pose is: x:%0.6f, y:%0.6f",msg->x,msg->y);
    ROS_INFO("turtle pose is: x:%0.6f, y:%0.6f", (*msg).x, (*msg).y);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "learning_topic_pose_subscriber");
    ros::NodeHandle nh;
    ros::Subscriber pos_suber = nh.subscribe("/turtle1/pose", 10, callback);

    //循环等待回调函数，会一直查看队列，队列有内容，就调用回调函数，否则就等待
    ros::spin();

    return 0;
}