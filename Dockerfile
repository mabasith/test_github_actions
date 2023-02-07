

# Basic nginx dockerfile starting with Ubuntu 20.04
FROM ros:noetic
RUN apt-get -y update
RUN apt-get -y install nginx
COPY test_pkg /catkin_ws/src
COPY test2_pkg /catkin_ws/src
RUN cd /catkin_ws && \
    . /opt/ros/noetic/setup.sh && \
    catkin_make 
