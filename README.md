# Introduction to Terraform on Azure
This is the repository for the LinkedIn Learning course Introduction to Terraform on Azure. The full course is available from [LinkedIn Learning][lil-course-url].

![Introduction to Terraform on Azure][lil-thumbnail-url] 

Are you wondering how to use Terraform for Azure? In this course, cloud engineer Alexandra Illarionov introduces you to everything you need to get started, including the base concepts, commands, and use-cases for Terraform in an Azure environment. Alexandra begins by defining Infrastructure as Code (IaC) and Terraform. She explains why Terraform is useful and how it compares to Bicep. Alexandra guides you through all the steps in installing and setting up Terraform in your environment, then shows you how to get started with Terraform commands, workspaces, state files, resources, and more. She steps through creating with Terraform and using Terraform to create a resource group, a virtual network, a subnet, an internal network interface, and more. After completing this course, you will know how to set up Terraform on Visual Studio Code and start deploying resources at a base level.


_See the readme file in the main branch for updated instructions and information._

## Learning Objectives
- Adding Terraform provider
- Creating an Azure resource group
- Creating a virtual network
- Creating a subnet
- Creating an internal network interface (NIC)
- Creating a Windows virtual machine

## Instructions
This repository has branches for each of the videos in the course. You can use the branch pop up menu in github to switch to a specific branch and take a look at the course at that stage, or you can add `/tree/BRANCH_NAME` to the URL to go to the branch you want to access.

## Branches
The branches are structured to correspond to the videos in the course. The naming convention is `CHAPTER#_MOVIE#`. As an example, the branch named `02_03` corresponds to the second chapter and the third video in that chapter. 
Some branches will have a beginning and an end state. These are marked with the letters `b` for "beginning" and `e` for "end". The `b` branch contains the code as it is at the beginning of the movie. The `e` branch contains the code as it is at the end of the movie. The `main` branch holds the final state of the code when in the course.

## Installing
1. To use these exercise files, you must have the following installed:
	- Visual Studio Code or preferred IDE
	- Azure CLI 
	- Terraform
2. Clone this repository into your local machine using the terminal (Mac), CMD (Windows), or a GUI tool like SourceTree.


### Instructor

Alexandra Illarionov 
                            
Cloud Solutions Engineer

                            

Check out my other courses on [LinkedIn Learning](https://www.linkedin.com/learning/instructors/alexandra-illarionov).

[lil-course-url]: https://www.linkedin.com/learning/introduction-to-terraform-on-azure
[lil-thumbnail-url]: https://cdn.lynda.com/course/2453108/2453108-1652374458166-16x9.jpg
