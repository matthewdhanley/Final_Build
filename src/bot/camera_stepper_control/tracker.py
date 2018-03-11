#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from geometry_msgs.msg import Point


def move_camera(data):
    cam_vel = Twist()
    if data.x > 400:
        cam_vel.angular.y = -1
    elif data.x < 200:
        cam_vel.angular.y = 1
    else:
        cam_vel.angular.y = 0

    pub.publish(cam_vel)


def start():
    # make a global publisher
    global pub

    # init topic
    pub = rospy.Publisher('cam_vel', Twist, queue_size=10)
    rospy.Subscriber('/tag_detections/tag_center', Point, move_camera)
    rospy.init_node('tag_center_subscriber')
    print("Node started")
    rospy.spin()


if __name__ == "__main__":
    start()
