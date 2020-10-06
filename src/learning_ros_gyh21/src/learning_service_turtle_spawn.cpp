#include <ros/ros.h>
#include <turtlesim/Spawn.h>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "turtle_spawn_client");
    ros::NodeHandle nh;

    //查询系统中是否有/spawn这样的服务，如果没有就在这里一直wait
    //如果存在了就去请求服务
    ros::service::waitForService("/spawn");
    // 用来给/spawn客户端发送请求的，数据类型为<这里的>
    ros::ServiceClient add_turtle = nh.serviceClient<turtlesim::Spawn>("/spawn");

    // 初始化请求数据
    turtlesim::Spawn srv;
    srv.request.x = 2.0;
    srv.request.y = 2.0;
    srv.request.name = "turtle2";

    ROS_INFO("call service to spawn turtle[name:%s, (x,y):(%0.6f, %0.6f)]", srv.request.name.c_str(), srv.request.x, srv.request.y);

    // 请求服务,阻塞型,会在这里一直等待服务器给反馈
    add_turtle.call(srv);

    // 显示调用结果
    ROS_INFO("response is: name:%s", srv.response.name.c_str());
    return 0;
}