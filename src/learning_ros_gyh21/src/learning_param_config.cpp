#include <ros/ros.h>
#include <std_srvs/Empty.h>

int main(int argc, char **argv)
{
    int red, green, blue;
    ros::init(argc, argv, "parameter_config");
    ros::NodeHandle nh;

    // 获取背景颜色
    ros::param::get("/background_r", red);
    ros::param::get("/background_g", green);
    ros::param::get("/background_b", blue);

    ROS_INFO("get background color is [b:%d,g:%d,r:%d]", blue, green, red);

    // 设置背景颜色
    ros::param::set("background_r", 255);
    ros::param::set("background_g", 255);
    ros::param::set("background_b", 255);

    ROS_INFO("set background color is [b:%d,g:%d,r:%d]", blue, green, red);

    ros::param::get("/background_r", red);
    ros::param::get("/background_g", green);
    ros::param::get("/background_b", blue);

    ROS_INFO("Re-get background color is [b:%d,g:%d,r:%d]", blue, green, red);

    ros::service::waitForService("/clear");
    ros::ServiceClient clearbg = nh.serviceClient<std_srvs::Empty>("/clear");
    std_srvs::Empty srv;
    clearbg.call(srv);

    sleep(1);
}