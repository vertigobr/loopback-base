Using Codenvy
========

## Workspace setup

To work with a Gitlab project on Codenvy:

* Create a worksplace based on the node stack;
* Run and open the workspace;
* Open 'Profile/Preferences':
  * Update 'Git commiter' fields
  * Open 'SSH/VCS', generate a key for 'gitlab.com' and upload it to your own profile at gitlab.com;
* Import project using its 'ssh' URL (git@gitlab.com:vertigobr/loopback/loopback-base.git);

### Optional steps:

* Open the workspace terminal and update node:

```sh
sudo npm install -g n
sudo n stable
```

* Open the workspace terminal and update npm:

```sh
sudo npm install -g npm
```

## Running this project

We always need `nodemon`, so install it if not present:

```sh
sudo npm install -g nodemon
```

To run this project on Codenvy first try to run it on the workspace Terminal:

```sh
user@07f006ae7e88:/projects$ cd loopback-base/src/
user@07f006ae7e88:/projects/loopback-base/src$ node .
(...)
Web server listening at: http://0.0.0.0:3000
Browse your REST API at http://0.0.0.0:3000/explorer
```

## Connect with browser

Check the "real" URL for the container's desired port (3000). Chech the workspace runtime settings at "dev-machine", look for the "node-3000" element. Use this URL in your remote browser.

## Connect with browser the smart way

You can create a new "run configuration" with the following attributes:

* Command line: "cd /projects/loopback-base/src && nodemon ."
* Preview URL: "${server.3000}explorer"

When starting the application from the very "run" button form the IDE you will be notified about the proper URL on the console (look for "preview"):

```
command: cd /projects/loopback-base/src && nodemon .
preview: http://node30.codenvy.io:33040/explorer
[33m[nodemon] 1.11.0[39m
(...)
Web server listening at: http://0.0.0.0:3000
Browse your REST API at http://0.0.0.0:3000/explorer
```
