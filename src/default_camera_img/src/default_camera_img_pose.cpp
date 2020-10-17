#include <ros/ros.h>
#include <std_msgs/Float64.h>
#include <opencv2/opencv.hpp>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <obj_detected/pred_draw.h>

using namespace std;
using namespace ros;
int main(int argc, char **argv)
{
  setlocale(LC_CTYPE, "zh_CN.utf8");
  cv::VideoCapture capture(0);

  if (!capture.isOpened())
  {
    cout << "open device failed" << endl;
    return -1;
  }

  ros::init(argc, argv, "default_camera_img");
  ros::NodeHandle nh("~");

  cv::Mat frame;
  sensor_msgs::ImagePtr default_camera_img;
  sensor_msgs::Image aac;
  
  obj_detected::pred_draw myimg;
  myimg.cur_color_img.data;

// 应该需要让这个ptr最后指向pose

  image_transport::ImageTransport it(nh);
  // image_transport::Publisher pub = it.advertise("default_camera/img", 1);
  image_transport::Publisher pub = it.advertise("/default_camera_img/symc_image_pose", 1);

  ros::Rate loop_rate(5);
  while (nh.ok())
  {
    capture >> frame;
    if (!frame.empty())
    {

      //opencv格式的图像转化为ROS所支持的消息类型，从而发布到相应的话题上。
      default_camera_img = cv_bridge::CvImage(std_msgs::Header(), "bgr8", frame).toImageMsg();
    //   image_pose.cur_ball_pose.
      pub.publish(default_camera_img);
    }
    // ROS_INFO("wohaihuozhe . . .");
    ROS_INFO("我还活着 . . .");
    ros::spinOnce();
  }
}
