#include <ros/ros.h>
#include <std_msgs/Int64.h>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "cb_test_puber");
    ros::NodeHandle nh;

    ros::Publisher puber = nh.advertise<std_msgs::Int64>("/ros_test/cb_test_puber", 1);

    std_msgs::Int64 count;
    count.data = 0;

    while (ros::ok())
    {
        puber.publish(count);
        count.data += 1;
        ROS_INFO("alive:%ld",count.data);
        if (count.data > 4000000000)
            break;
    }
}