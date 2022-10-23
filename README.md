# Mini Project -- Python Cloud Project Using AWS EC2 and S3

## 1. Business Scenario
Download job data from an API located [HERE](https://www.themuse.com/developers/api/v2)

We need 50 pages of jobs. 

## 2. Specification Detail
1. Create an EC2 Instance on AWS.
2. Build a python project on EC2 via VSCode. (Will require that VSCode remotely SSH connect to EC2)
3. Use the python script to read the API (use *requests library*)
4. Get the data we want:
- “company name”
- “locations”,
- “job name”,
- “job type”,
- “publication date”
5. Convert the json data into a dataframe (use *pandas library*)
6. Manipulate data: create a table to include:
- company_name
- country (cut the string of “locations”, keep the country part)
- city (cut the string of “locations”, keep the city part)
- Job_name
- Job_type
- Date (cut string of “publication date” only keep date part)
7. This is the result sample:
![result_sample](https://user-images.githubusercontent.com/74939090/197381891-253223db-513b-48de-8f82-80a098660eff.jpg)

8. Save the data into S3 bucket.

There are two ways to save the csv data to S3 using python:
1. Use boto3 and AWS credentials.
2. Attach an IAM Role to EC2, so that your EC2 instance doesn't need credentials and boto3 to upload csv files. All you need to do is save the csv to your local EC2 and use aws cli (aws s3 cp ….)to upload the file to S3. 

The way to set IAM Role in EC2 as below:
![EC2_ADD_ROLE](https://user-images.githubusercontent.com/74939090/197381977-fdab42b8-aa10-49af-ada9-dda90e333460.jpg)

![ROLE](https://user-images.githubusercontent.com/74939090/197381979-b5404080-915e-4dcf-bb67-d51b1090ea2b.jpg)

## 3. Required Files & Technical Instruction
- A shell script to set your virtual environment
- .gitignore file
- A python run script
- A toml file if you need to config parameters
- A separate file to save your secrets
- Better to initiate your project environment with a shell script.
- Better to use a shell script to control the python script.

## 4. Project Diagram:
![Python_project_1_lab_1](https://user-images.githubusercontent.com/74939090/197382124-8ffb0023-5df7-465e-a53a-21532245c133.png)
