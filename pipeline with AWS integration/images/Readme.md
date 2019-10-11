## Step by Step Project

### 1) Create an user and set it minimum privileges to EC2, read and write to S3

![img-1](1_setup_iam_user.png)

### 2) Launch an EC2 instance

![img-2](2_launch_ec2.png)

### 3) Access to the EC2 instance clone this repo and go to the folder: pipeline with aws integration. Execute the script: **sh ./setup_jenkins.sh** for install Jenkins Pipeline

![img-3](3_open_jenkins.png)

### 4) Set AWS credentials and Enable Blue Ocean in Jenkins

![img-0](0_set_aws_credentials_in_jenkins.png)


![img-4](4_enable_blue_ocean.png)

### 5) Create the pipeline using your repository (You need to have in your repository root folder the file **Jenkinsfile**)

![img-5](5_barebones_pipeline.png)

### 6) Update some tag to the index.html file inside artifacts folder for check that linter catch it

![img-6](6_linter_catches_html_issues.png)

### 7) Fix the tag in index.html 

![img-6](7_html_issues_fixed.png)

### 8) Go to your S3 Bucket and check that index.html is there

![img-8](8_published_static_site_to_s3.png)

**NOTE: You have to create an S3 Bucket for run this project**
