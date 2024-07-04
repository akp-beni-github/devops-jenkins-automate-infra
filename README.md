# infra

<img width="685" alt="Screenshot 2567-07-03 at 17 03 10" src="https://github.com/akp-beni-github/devops-jenkins-automate-infra/assets/162615013/7d3cd8c6-fc62-49c7-9a5f-043a6b07e6d0">

# before following the setup
-create ssh key for your ec2
-using aws credential that allow policies to create these infra or * for demo purpose
-connecting with aws cli then using terraform locally or using jenkins aws step from https://github.com/akp-beni-github/jenkins_vpc_terraform.git

<img width="685" alt="Screenshot 2567-07-03 at 17 02 58" src="https://github.com/akp-beni-github/devops-jenkins-automate-infra/assets/162615013/e7b65757-5b06-42df-bf89-51169674b638">

# after terraform apply with jenkins 
- this devops-main infra is created with aws using terraform (and jenkins)
- using s3 and dynamodb as a backend (configuration is in terraform.tfstate and s3 module)
- you have to set up your new <rds endpoint> and commit push to your application repo
- then set up your rds database with these command (username password is hardcoded on rds module of main.tf)
  
<img width="328" alt="Screenshot 2567-07-03 at 16 18 11" src="https://github.com/akp-beni-github/devops-jenkins-automate-infra/assets/162615013/51dcd458-3a31-46d8-bb59-c59baf149c0a">

<img width="1440" alt="Screenshot 2567-07-03 at 16 53 44" src="https://github.com/akp-beni-github/devops-jenkins-automate-infra/assets/162615013/9f48a000-0dee-48ef-a6dd-ccc637588e6e">



# important notes
- with this specific environment you could not access both jenkins and application with https since i do not have available domain name
  but here's some of my understanding of https certificate and route 53

  <img width="941" alt="Screenshot 2567-06-28 at 16 59 34" src="https://github.com/akp-beni-github/devops-jenkins-automate-infra/assets/162615013/026506bc-8a7f-42c8-92c6-527578d386a0">
  <img width="1137" alt="Screenshot 2567-06-28 at 17 21 59" src="https://github.com/akp-beni-github/devops-jenkins-automate-infra/assets/162615013/8f8d40b7-7beb-45e0-908b-144fb880e376">


  
- note that you have to access these websites with http not https
- heres' my python flask application repo
https://github.com/akp-beni-github/flask-python-mysql-db.git


# discussion
- there's no real usage of application load balancer since both ec2 instances are not setting up as auto-scaled
