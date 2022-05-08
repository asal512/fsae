#! /usr/bin/env python
from re import A
from turtle import backward, distance
import rospy
import math
from geometry_msgs.msg import Point, Twist
from cares_msgs.msg import ArucoMarkers



REWARD_SCALAR = 10 #max reward value given when angle = 0 and distance = 0
ANGLE_REWARD_DROPOFF = 6 #larger value = faster drop off of reward for increasing angle (frequency of cos wave)
DISTANCE_REWARD_DROPOFF = 0.5 #larger value = faster drop off of reward for increasing distance (frequency of cos wave)
ANGLE_TO_DISTANCE_REWARD_PRIORITY = 0.5 #ratio of total reward that is prioritized from angle reward (distance reward is 1 - ANGLE_TO_DISTANCE_REWARD_PRIORITY)

class Detector():
	def __init__(self):
		# Initiliaze
		rospy.init_node('Detector', anonymous=False)

		# Tell user how to stop TurtleBot
		rospy.loginfo("To stop TurtleBot CTRL + C")

		# What function to call when you ctrl + c    
		rospy.on_shutdown(self.shutdown)
		
		self.detector_sub = rospy.Subscriber("/camera/markers", ArucoMarkers, self.MarkerCallback)
		self.teleop_sub = rospy.Subscriber("/cmd_vel_mux/input/teleop", Twist, self.TeleopCallback)
		self.markers = ArucoMarkers()
		self.input = Twist()
		self.num_of_markers = 0


		#reset data.txt file (clear all data)
		file = open("/home/aakaash/fsae/src/fsae_control/data.txt","w")
		file.close()

		# TurtleBot will stop if we don't keep telling it to move.  
		# How often should we tell it to move?
		r = rospy.Rate(5)
		
		
		self.OpenFile()

		# As long as you haven't ctrl + c keeping doing...
		while not rospy.is_shutdown():
			self.AppendDataToFile()
			r.sleep()


	def shutdown(self):
		# Stop turtlebot
		rospy.loginfo("Stop TurtleBot")
		self.CloseFile()
		# A default Twist has linear.x of 0 and angular.z of 0.  
		# So it'll stop TurtleBot
		#self.cmd_vel.publish(Twist())
		# Sleep just makes sure TurtleBot receives the stop command
		# prior to shutting
		# down the script
		rospy.sleep(1)
		
	def MarkerCallback(self, data):
		self.markers = data
		self.num_of_markers = len(self.markers.marker_ids)
		self.ReorderMarkers()
		#self.FindLowestPair()
		#print("Reward = %.3f \n\n" % self.CalculateReward())

	def TeleopCallback(self, data):
		self.input = data
		
	def CalculateMidPoint(self, mk1, mk2):
		midpoint = Point()
		midpoint.x = (mk1.position.x + mk2.position.x)/2
		midpoint.y = (mk1.position.y + mk2.position.y)/2
		midpoint.z = (mk1.position.z + mk2.position.z)/2
		return midpoint
		
	def CalculateAngleTo(self, targetPosition):
		#calculates absolute angle deviation from facing target position in RADIANS
		return math.atan(abs(targetPosition.x/targetPosition.z))

	def CalculateDistanceTo(self, targetPosition):
		#calculates linear distance to target position
		return math.sqrt((targetPosition.x**2)+(targetPosition.z**2)) 

	def ReorderMarkers(self):
		
		# loop to access each array element
		for i in range(self.num_of_markers):
			# loop to compare array elements
			for j in range(0, self.num_of_markers - i - 1):
				# compare two adjacent elements
				# change > to < to sort in descending order
				if self.markers.marker_ids[j] > self.markers.marker_ids[j + 1]:

					#swap ids in marker_ids array
					temp_id = self.markers.marker_ids[j]
					self.markers.marker_ids[j] = self.markers.marker_ids[j+1]
					self.markers.marker_ids[j+1] = temp_id

					#swap poses in marker_poses array
					temp_pose = self.markers.marker_poses[j]
					self.markers.marker_poses[j] = self.markers.marker_poses[j+1]
					self.markers.marker_poses[j+1] = temp_pose

	def FindLowestPair(self):
		#if first_marker_index and second_marker_index >= 0 then pair found
		self.first_marker_index = -1

		for index in range(self.num_of_markers - 1):
			first_marker_id = self.markers.marker_ids[index]
			if (first_marker_id % 2 == 1):
				if(self.markers.marker_ids[index + 1] == first_marker_id + 1):
					self.first_marker_index = index
					break

	def CalculateReward(self):
		self.FindLowestPair()

		if(self.first_marker_index < 0):
			return -10 * REWARD_SCALAR

		midpoint = self.CalculateMidPoint(self.markers.marker_poses[self.first_marker_index],self.markers.marker_poses[self.first_marker_index + 1])
		angleToTarget = self.CalculateAngleTo(midpoint)
		distanceToTarget = self.CalculateDistanceTo(midpoint)

		angle_reward = REWARD_SCALAR* math.cos(angleToTarget * ANGLE_REWARD_DROPOFF)

		distance_reward = REWARD_SCALAR* math.cos(distanceToTarget * DISTANCE_REWARD_DROPOFF)

		return (ANGLE_TO_DISTANCE_REWARD_PRIORITY*angle_reward) + ((1 - ANGLE_TO_DISTANCE_REWARD_PRIORITY)*distance_reward)

	def AppendDataToFile(self):
		#get marker positions
		marker_positions = self.GetData()
		data_line = ""
		#write marker x,z values
		for i in range(6):
			data_line += "%.3f %.3f " % (marker_positions[i].x, marker_positions[i].z)
		#write teleop cmd values
		data_line += str(self.input.linear.x) + " " + str(self.input.angular.z) + " "
		#write reward
		data_line += str(self.CalculateReward())

		print(data_line)
		#write data to file	
		self.AppendToFile(data_line)
		

	def OpenFile(self):
		#open file
		self.file_object = open("/home/aakaash/fsae/src/fsae_control/data.txt", "a")

	def CloseFile(self):
		self.file_object.close()

	def AppendToFile(self, data):
		self.file_object.write(data + "\n")

	def GetData(self):
		saved_markers = 0
		marker_info = []
		for i in range(self.num_of_markers):
			if saved_markers < 6:
				marker_pos = Point()
				marker_pos.x = self.markers.marker_poses[i].position.x
				marker_pos.z = self.markers.marker_poses[i].position.z
				marker_info.append(marker_pos)
				saved_markers += 1

		while saved_markers < 6:
			marker_pos = Point()
			marker_pos.x = 100
			marker_pos.z = 100
			marker_info.append(marker_pos)
			saved_markers += 1

		return marker_info

		

	
	def PrintAllMarkers(self, markerPositions):
		print("Number of Markers = %d" % self.num_of_markers)
		for i in range(self.num_of_markers):
			print("Marker %d : \nX = %.3f \nY = %.3f \nZ = %.3f \n\n\n" % (self.markers.marker_ids[i],self.markers.marker_poses[i].position.x,self.markers.marker_poses[i].position.y,self.markers.marker_poses[i].position.z))

if __name__ == '__main__':
	Detector()

