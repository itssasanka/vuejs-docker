# vuejs-docker
A Docker wrapper for quickly creating VueJS apps and running them inside Docker containers

# Steps to create your VueJS project quickly using this wrapper:
- `git clone this project`
- `cd into the project directory`
- run `make image`
- run `make bash`
- initiate your vue project using the standard vue-cli commands. Ex: `vue init webpack <projectname>`
- exit out of the container
- run `make finish`
- run `cd ..`. You have a new directory with your project name waiting there. 
- `cd` into that directory and run `make install`
- run `make server` to start your vuejs app. It's ready on port 5000.
