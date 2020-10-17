#include <ros/ros.h>
#include <obj_detected/pred_draw.h>
#include <iostream>
#include <string>
using namespace std;

class Pred_draw
{
private:
    obj_detected::ball_pose last_pos;
    obj_detected::ball_pose cur_pos;
    string recv_topic_sync_image_pose;

public:
    Pred_draw(string& recv_topic_sync_image_pose)
    :recv_topic_sync_image_pose(recv_topic_sync_image_pose)
     {}
    ~Pred_draw() {}
    void run()
    {
        start();
        stop();
    }

private:
    void start() {}
    void stop() {}
};

int main(int argc, char **argv)
{
    ros::init(argc, argv, "obj_detect_pred_draw");
    ros::NodeHandle nh;

    string recv_topic_sync_image_pose = "/obj_detected/sync_image_pose";


    obj_detected::pred_draw::ConstPtr aaa;
}