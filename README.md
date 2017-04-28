Loopback
======

Loopback base image for quick-starting projects.

This image has the "Loopback CLI" tool pre-installed. It also holds a sample application at "/usr/src".

## Scripts

Utility scripts included:

* build.sh: builds the Docker image
* start.sh: runs the image (default CMD, no mounts)
* runbash.sh: runs the image (CMD=bash, no mounts)
* prompt.sh: runs the image (CMD=bash, mounts 'src' folder) <-- use this during development

## Quick start

A sample project already goes into the "src" folder, it was created with the "lb" command-line tool (the Loopback CLI):

```
# lb
? What's the name of your application? src
? Which version of LoopBack would you like to use? 3.x (current)
? What kind of application do you have in mind? hello-world (A project containing a controller, including a single vanilla Message and a single remote method)
```

Just run 'start.sh' and test the application with a browser at "http://localhost:3000".

## Useful quick start

Running the image "as-is" is cool but useless. It is much better to be able to edit files and test changes immediately, without a "docker build".

The "prompt.sh" script mounts the "src" folder into "/usr/src". Once inside you can run the mounted application with:

```sh
nodemon .
```
