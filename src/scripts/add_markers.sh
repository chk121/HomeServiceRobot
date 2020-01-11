#!/bin/sh

xterm -e " roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$ROOT_HSR_REPO_PATH/src/world/home_service_robot_test.world " &
sleep 5
xterm -e " roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$ROOT_HSR_REPO_PATH/src/map/hmap.yaml " &
sleep 5
xterm -e " roslaunch add_markers view_navigation_and_markers.launch " &
sleep 5
xterm -e " roslaunch add_markers add_markers.launch "
