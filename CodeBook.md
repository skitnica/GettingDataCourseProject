# Code Book for Getting and Cleaning Data Course Projectd

Description of Columns

1. Subject
   Identifier for the Test subject
2. Activity
   Activity performed when mesurements was taken
   
   The rest of the data can be broadly described by the following:
   All the data columns contains the averages of the data, per Subject, per Activity
     
   The information summarised, are for the following measurements:
   
   - (Acceleration)  measured by the accelerometer
   - (Angular Velocity) measured by the gyroscope
   
   Fore each of the above , measurements were captured over time at a rate of 50Hz, 
   and filtered to acquire (Body) and (Gravity) signals these are denoted by starting
   with a (t).
   
   the body linear acceleration and angular velocity were derived in time to obtain (Jerk) 
   signals and (magnitude) was calculated by using the Euclidean norm
   
   A Fast Fourier Transform was applied to some of these signals - these start with a (f)
   
     
   These signals were used to estimate variables of the feature vector for each pattern:
   '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
   
   For all of the above, the mean and std were calculated.
   
3. tBodyAcceleration mean X
4. tBodyAcceleration mean Y                  
5. tBodyAcceleration mean Z
6. tGravityAcceleration mean X               
7. tGravityAcceleration mean Y  
8. tGravityAcceleration mean Z               
9  tBodyAccelerationJerk mean X
10.tBodyAccelerationJerk mean Y              
11. tBodyAccelerationJerk mean Z  
12. tBodyAngularVelocity mean X               
13. tBodyAngularVelocity mean Y
14. tBodyAngularVelocity mean Z               
15  tBodyAngularVelocityJerk mean X
16. tBodyAngularVelocityJerk mean Y           
17. tBodyAngularVelocityJerk mean Z
18. tBodyAccelerationMagnitude mean           
19. tGravityAccelerationMagnitude mean
20. tBodyAccelerationJerkMagnitude mean       
21. tBodyAngularVelocityMagnitude mean 
22. tBodyAngularVelocityJerkMagnitude mean    
23. fBodyAcceleration mean X                 
24. fBodyAcceleration mean Y                  
25. fBodyAcceleration mean Z 
26. fBodyAccelerationJerk mean X              
27. fBodyAccelerationJerk mean Y
28. fBodyAccelerationJerk mean Z              
29. fBodyAngularVelocity mean X
30. fBodyAngularVelocity mean Y               
31. fBodyAngularVelocity mean Z  
32. fBodyAccelerationMagnitude mean           
33. fBodyBodyAccelerationJerkMagnitude mean    
34. fBodyBodyAngularVelocityMagnitude mean    
35. fBodyBodyAngularVelocityJerkMagnitude mean
36. tBodyAcceleration std X                   
37. tBodyAcceleration std Y  
38. tBodyAcceleration std Z
39. tGravityAcceleration std X
40. tGravityAcceleration std Y                
41. tGravityAcceleration std Z
42. tBodyAccelerationJerk std X               
43. tBodyAccelerationJerk std Y
44. tBodyAccelerationJerk std Z               
45. tBodyAngularVelocity std X
46. tBodyAngularVelocity std Y                
47. tBodyAngularVelocity std Z
48. tBodyAngularVelocityJerk std X            
49. tBodyAngularVelocityJerk std Y
50. tBodyAngularVelocityJerk std Z            
51. tBodyAccelerationMagnitude std
52. tGravityAccelerationMagnitude std         
53. tBodyAccelerationJerkMagnitude std    
54. tBodyAngularVelocityMagnitude std         
55. tBodyAngularVelocityJerkMagnitude std  
56. fBodyAcceleration std X                   
57. fBodyAcceleration std Y                 
58. fBodyAcceleration std Z                   
59. fBodyAccelerationJerk std X         
60. fBodyAccelerationJerk std Y               
61. fBodyAccelerationJerk std Z        
62. fBodyAngularVelocity std X                
63. fBodyAngularVelocity std Y         
64. fBodyAngularVelocity std Z                
65. fBodyAccelerationMagnitude std       
66. fBodyBodyAccelerationJerkMagnitude std    
67. fBodyBodyAngularVelocityMagnitude std  
68. fBodyBodyAngularVelocityJerkMagnitude std 
