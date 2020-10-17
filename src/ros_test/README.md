使用说明：

```
roscore
rosrun ros_test puber
```
此句是为了在屏幕显示的同时输出到文件，**建议在`catkin_ws/src/ros_test`目录下运行此命令，确保后续文件路径不出错**

```
rosrun ros_test suber >&1 | tee output.txt
```

进行检测

```
python3 check.py
```

理论上直接看输出的文件也可以，如果出问题了，文件中一定不会对齐。