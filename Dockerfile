

# Basic nginx dockerfile starting with Ubuntu 20.04
FROM ros:noetic
RUN apt-get -y update
RUN apt-get -y install nginx
COPY test_pkg /catkin_ws/src
RUN cd /catkin_ws && \
    source /ros_entrypoint.sh && \
    catkin_make 
