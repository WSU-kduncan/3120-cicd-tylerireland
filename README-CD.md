# Project 5

## Part 1 - Semantic Versioning

### Overview
We are using continuous deployment in this project to automate the tasks of pulling the image back
to the system after an update is pushed. First, I created tags to indicate which image should be pulled.
Once the images are tagged, I used a webhook to automatically send a message back to the 
system indicating that the image has been updated. This will also automatically pull the image back to the system.

### Generating Tags
To generate a tag:
* First, use `git commit` to commit an update to GitHub
* Next, use the command `git tag -a v*.*.*` , where the  `*`'s can be any number, which will tag that commit
* Then push the tag with `git push origin v*.*.*`

Since the GitHub workflow only builds and pushes an image when something is pushed to the `main` branch, we need to add to the workflow indicating that the image should be updated when pushing a `tag`. I was able to do this and now I get three new images pushed to Dockerhub:
* a __LATEST__ version 
* a __MAJOR.MINOR__ version (like v1.2) 
* and a __MAJOR__ version (like v1).

Here is my [DockerHub Repository](https://hub.docker.com/repository/docker/tyleriireland/project4/general)
