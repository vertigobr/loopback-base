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

