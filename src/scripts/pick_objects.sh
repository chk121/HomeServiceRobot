#!/bin/sh

xterm -e " roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$ROOT_HSR_REPO_PATH/src/world/home_service_robot_test.world " &
sleep 5
xterm -e " roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$ROOT_HSR_REPO_PATH/src/map/hmap.yaml " &
sleep 5
xterm -e " roslaunch turtlebot_rviz_launchers view_navigation.launch " &
sleep 5
xterm -e " roslaunch pick_objects pick_objects.launch "
