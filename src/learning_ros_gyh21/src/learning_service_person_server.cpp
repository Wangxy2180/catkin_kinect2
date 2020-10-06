#include <ros/ros.h>
#include <learning_ros_gyh21/Person_srv.h>

bool callback(learning_ros_gyh21::Person_srv::Request &req,
              learning_ros_gyh21::Person_srv::Response &res)
{
    ROS_INFO("server recv info is[name:%s sex:%d age:%d]", req.name.c_str(), req.sex, req.age);
    res.result = "OK";
    return true;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "preson_server");
    ros::NodeHandle nh;

    //创建一个名为/show_person的server，注册回调函数callback
    ros::ServiceServer person_server = nh.advertiseService("/show_person", callback);

    ROS_INFO("waiting for recv request");
    //循环等待回调函数
    ros::spin();

    return 0;
}