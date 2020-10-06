#include <ros/ros.h>
#include <learning_ros_gyh21/Person.h>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "person_puber");
    ros::NodeHandle nh;
    ros::Publisher person_puber = nh.advertise<learning_ros_gyh21::Person>("/person_info", 10);

    ros::Rate loop(10);

    int count = 0;

    while (ros::ok())
    {
        learning_ros_gyh21::Person person_msg;
        person_msg.name = "Tony";
        person_msg.age = 19;
        person_msg.sex = learning_ros_gyh21::Person::male;

        person_puber.publish(person_msg);
        ROS_INFO("person info is:[name %s, age %d, sex %d]", person_msg.name.c_str(), person_msg.age, person_msg.sex);

        loop.sleep();
    }
}