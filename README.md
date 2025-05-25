"# uploads_artifacts_to_s3" 


Aim : Automate Build ( git scm )  and store artifacts into AWS S3 with vesioning feature. 

---------------------FREESTYLE WAY ---------------------------


step1: load project

step2: create IAM User and AWS S3 full acess and crate access keys for authentication from jenkins server 

step3: create a freestyle job and configure  below ways 

1. add credential of aws iam user into jenkins under system setting

2. add s3 publisher plugin

   ![image](https://github.com/user-attachments/assets/1d1e13c1-9d31-4441-853d-883af6b1c4b3)


  ![image](https://github.com/user-attachments/assets/1531a6dc-cb9c-45e8-8f8a-3de8e1619061)



  give permissions to jenkins to add contents into s3 ( putobject )

  ![image](https://github.com/user-attachments/assets/4f07443c-deba-4075-9ed0-0803f69bf531)



 step4:  build project and we can see different versions of artifacts are stored 

 ![image](https://github.com/user-attachments/assets/2c235878-13bd-4451-89a7-91860d67a4f2)


  ---------------------PIPELINE SCRIPT  ---------------------------

1: add github webhooks wit payload as <23.23.2.23:8080>/github-webhook/

enable 

![image](https://github.com/user-attachments/assets/5e94d7f7-fb79-4ca5-9a53-39b6c3d31b1d)


2. 
   
