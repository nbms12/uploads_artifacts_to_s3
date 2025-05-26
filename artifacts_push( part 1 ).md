


in freestyle create a job to build and push artifacts to s3 


steps : 

1.
![image](https://github.com/user-attachments/assets/7dbb69ab-7112-4011-b033-86f63b1d2a8a)


2. invoke maven for build steps install maven in tools section

   ![image](https://github.com/user-attachments/assets/33d2657f-d308-4650-a92e-7ff20c1dcf3f)


3. post build actions

![image](https://github.com/user-attachments/assets/61c5db86-ac4e-4173-b871-2f28017d19f4)


![image](https://github.com/user-attachments/assets/7ec55e4c-68f6-42a4-8216-584fa28da75d)



once  build and push is complete succesfully , we will trigger job 2 to download artifacts from s3 and deploy to tomcat 


