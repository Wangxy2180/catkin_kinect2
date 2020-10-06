#include <ros/ros.h>
#include <learning_ros_gyh21/Person_srv.h>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "person_client");
    ros::NodeHandle nh;
    // 发现名为/show_person后连接该服务
    ros::service::waitForService("/show_person");
    ros::ServiceClient person_client = nh.serviceClient<learning_ros_gyh21::Person_srv>("/show_person");

    // 初始化数据
    learning_ros_gyh21::Person_srv person_info;
    person_info.request.name = "Timi";
    person_info.request.sex = learning_ros_gyh21::Person_srv::Request::male;
    person_info.request.age = 10;

    ROS_INFO("call service to show person[name:%s, age:%d, sex:%d]", person_info.request.name.c_str(), person_info.request.age, person_info.request.sex);

    // 此处阻塞等待返回的结果
    person_client.call(person_info);

    ROS_INFO("result is %s", person_info.response.result.c_str());

    return 0;
}