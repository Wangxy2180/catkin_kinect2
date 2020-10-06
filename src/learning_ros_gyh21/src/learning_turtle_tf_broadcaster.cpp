#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <turtlesim/Pose.h>
#include <string.h>

std::string turtle_name;

void poseCallback(const turtlesim::PoseConstPtr &msg)
{
    // 创建一个tf广播器，用来广播当前turtle相对于世界坐标系的位置
    static tf::TransformBroadcaster br;

    // 初始化tf数据
    // 以turtle1为例，他和world坐标系的关系有平移和旋转
    // transform就是那个4×4的矩阵
    tf::Transform transform;
    // 首先是平移，通过setOrigin设置平移参数，分别是相对于世界坐标系，围绕xyz的平移
    transform.setOrigin(tf::Vector3(msg->x, msg->y, 0.0));
    // 接下来是旋转，通过四元数,通过围绕xyz三轴的旋转设置姿态。因为是平移，所以xy都为0,只有z方向有值
    tf::Quaternion q;
    // 然后就完成了两个坐标系之间姿态变化的设置
    q.setRPY(0, 0, msg->theta);
    // 然后将姿态设置到transform里，现在transform保存了平移和旋转的位置关系，于是两个坐标系的位置关系就可以描述出来了
    transform.setRotation(q);

    // 广播world与海龟坐标系之间的tf数据,广播之后会将坐标关系插入到坐标树里，
    // 广播了两个坐标系是谁，关系如何，是哪个时刻的，然后tf树中就会出现world和turtle1或者turtle2的位置关系
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "world", turtle_name));
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "my_tf_broadcaster");

    //判断输入的是第几只海龟
    if (argc != 2)
    {
        ROS_ERROR("need turtle name as argument");
        return -1;
    }

    turtle_name = argv[1];

    ros::NodeHandle nh;
    //海龟的位置是turtlesim不断的向外发送的
    ros::Subscriber suber = nh.subscribe(turtle_name + "/pose", 10, &poseCallback);

    ros::spin();
}