# RR-Robot-with-circulatory-Trajectory

**INTRODUCTION**

Robotic manipulators are essential to many industrial applications because they provide unmatched accuracy and adaptability in completing manufacturing and medical jobs. In the field of robotic control, it is critical to comprehend these systems' dynamics in order to create effective control algorithms that produce the appropriate end-effector trajectories. One of the core ideas in robotics is the inverse dynamics issue, which is figuring out the joint torques needed to accomplish certain end-effector motions. In this research, we investigate the inverse dynamics issue for a rotating-revolute (RR) robotic manipulator to calculate the joint torques required to move along a circular track at a constant speed inside the manipulator's workspace.
The RR manipulator, which has two revolute joints, is a basic yet simpler form that is frequently used in robotic applications. We can investigate the nuances of the inverse dynamics issue while preserving tractability if we concentrate on this setup. Our goal is to create an iterative numerical method to solve the inverse dynamics issue for the RR manipulator, following the guidelines in Section 8.3 of the textbook. We will be able to calculate the joint torques needed to reach the specified joint locations, velocities, and accelerations needed to follow a circular trajectory thanks to this technique.
We will use an analytical calculation or forward dynamics simulation method of verification to confirm the correctness of our estimated joint torque trajectories. We may simulate the forward dynamics by applying starting circumstances to the RR manipulator, such as joint locations and velocities, and then comparing the ensuing end-effector movements with the required circular trajectory. This stage of verification confirms that our computed joint torques are accurate and highlights how well our iterative numerical technique works to solve the inverse dynamics issue for the RR manipulator.
 
 ![image](https://github.com/annadurai-ka/RR-Robot-with-circulatory-Trajectory/assets/156352281/af88aa5a-c7e5-488b-a57a-1511664042e2)

Fig.1 Overall block diagram of RR robot circular trajectory simulation

**METHODOLOGY**

1. Input Model:
	The path taken by the robotic arm is incorporated into the input model.  It defines the x and y path for the robotic simulation using the sin and cos functions after receiving information from the clock. The following are the expressions that are utilized in this project for input:

	    1 + 0.25*sin((2*pi/5)*u + pi/2 and 1 + 0.25*cos((2*pi/5)*u + pi/2)
   
3. Inverse Kinematics:
	It comprises the matrices and the MATLAB function that feeds the inverse function, which computes the angles (O1, O2) and other necessary metrics, the X1 and Y1 from the trajectory model, and the mechanical model of our robotic arm. 
	The following are the formulae that are utilized in this project for finding the angle:

        O1=atan2\left(Y1,X1\right)-atan2l2\ast sinO2,l1+l2\ast cosO2
        O2=acos\left(\left(X1^2+Y1^2-l1^2-l2^2\right)/\left(2\ast l1\ast l2\right)\right)
   
5. Mechanical Model:

	It includes a mechanical model of our robotic arm that includes every joint, support, arm, and leg of the robot. To handle a wide range of motions, Simulink offers incredibly useful features including joints, sensors, linkages, functions, and continuous assistance.

	As shown in fig.2 below, Number of blocks, sensors and joints are used to develop this mechanical model replicate the RR robot.

 ![image](https://github.com/annadurai-ka/RR-Robot-with-circulatory-Trajectory/assets/156352281/94b5dfb7-98cd-4072-a6e9-701c0d09ad1f)

a.) Simulink Blocks
 
 ![image](https://github.com/annadurai-ka/RR-Robot-with-circulatory-Trajectory/assets/156352281/18da8737-4915-4943-9b0a-6a68ff4d52e1)

b.) RR Robot simulation

Fig.2 Mechanical Model of the RR robot

6. Forward Kinematics:

	It has all the matrices and functions that, like inverse kinematics model, use angles from the mechanical model as the input and compute X and Y to move the arm as the output.

**RESULT AND DISCUSSION**

Finally, Using the angle outputs from the forward kinematics model, the circular trajectory of RR robot is plotted with the help of matplot codes as shown in fig.3. 
 
 ![image](https://github.com/annadurai-ka/RR-Robot-with-circulatory-Trajectory/assets/156352281/4bbc44df-3ec3-47cb-9191-388194a5f5ad)

Fig.3 Circular trajectory of the RR robot and RR robot visualization
 
 ![image](https://github.com/annadurai-ka/RR-Robot-with-circulatory-Trajectory/assets/156352281/1ecb6eae-8a2d-471c-ae87-c3660f43fdd6)

Fig.4 Plots of Joint Torques

The joint torques are recorded in graph using matplot as shown in fig.4 and this is acquired from the desired trajectory of the end-effector of the robot. Therefore, we verified that joint torque trajectories are correct when comparing to the simulated output of the RR Robot. For reference, the following is the link for this project’s output: https://youtu.be/8FWqnjeGYjw 

**CONCLUSION**

In conclusion, this study successfully addresses the inverse dynamics problem for a rotating-revolute (RR) robotic manipulator, elucidating the joint torques necessary to traverse a circular trajectory with consistent velocity within the robot's workspace. By employing an iterative numerical method guided by established principles, the project not only provides a robust framework for solving the inverse dynamics problem but also enhances comprehension of the manipulator's dynamics. The findings underscore the importance of understanding and solving inverse dynamics problems in robotic control, paving the way for enhanced efficiency and precision in various industrial and medical applications.
