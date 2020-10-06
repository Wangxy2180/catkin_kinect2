#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/Twist.h>
#include <turtlesim/Spawn.h>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "my_tf_listener");
    ros::NodeHandle nh;

    // 请求产生turtle2
    ros::service::waitForService("/spawn");
    ros::ServiceClient add_turtle = nh.serviceClient<turtlesim::Spawn>("/spawn");
    turtlesim::Spawn srv;
    add_turtle.call(srv);

    // 创建发布turtle2速度控制指令的发布者
    ros::Publisher turtle2_vel = nh.advertise<geometry_msgs::Twist>("/turtle2/cmd_vel", 10);

    // 创建一个tf监听器
    tf::TransformListener listener;

    ros::Rate loop_rate(10);
    while (nh.ok())
    {
        // 获取turtle1和turtle2之间的位置关系，创建一个transform，保存平移旋转
        tf::StampedTransform transform;

        try
        {
            // 这两句是核心，如何通过tf的listener来监听两个坐标系的关系
            // 等待是否存在这个turtle1和turtle2的坐标系，如果存在才会执行第二句
            // 查询最新的实时数据，等待3s
            listener.waitForTransform("/turtle2", "/turtle1", ros::Time(0), ros::Duration(3.0));
            // 查询两个坐标系的关系，时间是当前时间，结果保存在transform中，所以我们就获取的到了两个坐标系的位置关系，包括平移和旋转，也就是所说的向量
            listener.lookupTransform("/turtle2", "turtle1", ros::Time(0), transform);
        }
        catch (tf::TransformException &ex)
        {
            ROS_ERROR("%s", ex.what());
            ros::Duration(1.0).sleep();
            continue;
        }

        // 根据turtle1和turtle2坐标系之间的位置关系，发布turtle2的速度控制指令
        geometry_msgs::Twist vel_msg;
        // 做一个时间参数的乘法
        vel_msg.angular.z = 4.0 * atan2(transform.getOrigin().y(),
                                        transform.getOrigin().x());
        // 对向量的长度做一个欧式距离的计算，然后乘时间系数(0.5就是时间系数，希望海龟两秒钟完成这段距离)
        vel_msg.linear.x = 0.5 * sqrt(pow(transform.getOrigin().x(), 2) +
                                      pow(transform.getOrigin().y(), 2));
        //   得到线速度和角速度，Twist参数就完整了，然后发布出去
        turtle2_vel.publish(vel_msg);
        loop_rate.sleep();
    }

    return 0;
}