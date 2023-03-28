# Project 4

## Part 1 - Dockerize it

### Overview
The objective of this project is to create a container that will run a website with apache2. Containers contain libraries and files required to run a single service or software. They are similar to a virtual machine, but are much more lightweight and efficient. They can also be deployed are many machines.
  
### Run Project Locally
1. WSL2 should be installed prior to installing Docker. Docker uses WSL2 so having it installed before will make the installation smoother. I already had WSL2 installed prior to this project. I installed both through their website and it was pretty simple.
  
2. Building an image from a Dockerfile requires 3 things:  
  *  ` FROM httpd:2.4 `  
     * specifies the image that the container is being built from. 
  *  ` COPY website/ /usr/local/apache2/htdocs/ ` 
     * copies the contents from `website/` (my website) to `/usr/local/apache2/htdocs` (location where apache2 runs index.html).
  * `EXPOSE 80` 
     * tells the container which port to listen on.
     
  Once I finished the dockerfile, I used the command ` sudo docker build -t="apacheserver" . `
  * the `-t` flag represents the tag, or name, that I give the container. In this case, the container's name is apacherserver.
  * the `.` is the location of the dockerfile that the container will be built from.
     
 3. After building the image, the command `sudo docker run -d -p 5000:80 apacheserver` will run the container.
  * the `-d` flag runs the process in the background.
  * the `-p 5000:80` is the port binding flag.
    * I had to bind port 5000 because apache was running it's website on port 80 even though I don't have apache installed on my local system.

 4. To view the project running in the container, I put `localhost:5000` into the search bar.
 
 ![My Website](https://github.com/WSU-kduncan/3120-cicd-tylerireland/blob/main/apachesite.JPG)
     
 
 
 ## Part 2 - GitHub Actions & DockerHub
 
 1. To create a repository in DockerHub, I:
   * registered a free account
   * hit the 'repositories' tab at the top
   * selected 'create repository' at the top right
   * gave it a name
   * kept it public
   * hit 'create'

