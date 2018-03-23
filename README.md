Loopback
======

Loopback base image for quick-starting projects.

This image has the "Loopback CLI" tool pre-installed.

## Scripts

Utility scripts included:

* build.sh: builds the Docker image
* runbash.sh: runs the image (CMD=bash, no mounts)
* prompt.sh: runs the image (CMD=bash, mounts current folder as '/usr/app') <-- use this during development

## Quick start

To create a simple project use the "lb" command-line tool (the Loopback CLI):

```
# lb
? What's the name of your application? myapp
? Which version of LoopBack would you like to use? 3.x (current)
? What kind of application do you have in mind? hello-world (A project containing a controller, including a single vanilla Message and a single remote method)
```


## Useful quick start

Use docker-compose to mount the current folder.

