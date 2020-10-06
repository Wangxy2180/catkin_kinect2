#include <ros/ros.h>
#include <learning_ros_gyh21/Person.h>

//两个callback函数都可以正常使用
void callback(learning_ros_gyh21::PersonConstPtr msg)
{
    ROS_INFO("recv info is[name %s, age %d, sex %d]", (*msg).name.c_str(), (*msg).age, (*msg).sex);
}

// void callback(const learning_ros_gyh21::Person::ConstPtr &msg)
// {
//     ROS_INFO("recv info is[name %s, age %d, sex %d]", msg->name.c_str(), msg->age, msg->sex);
// }

int main(int argc, char **argv)
{
    ros::init(argc, argv, "person_suber");
    ros::NodeHandle nh;
    // 这里一定要记得写一个订阅者，否则收不到消息，python似乎可以不用写
    ros::Subscriber suber = nh.subscribe("/person_info", 1, callback);
    //下列这句会收不到消息
    // nh.subscribe("/person_info", 1, callback);

    ros::spin();
}