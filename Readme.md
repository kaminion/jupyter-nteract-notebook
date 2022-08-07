# Jupyter Nteract-Notebook
---

We're image inherit jupyter/base-notebook image
You can use Docker images containing Nteract extension from Jupyter Notebook!
- Start Personal Jupyter Server with Nteract extension
- if you want more information, visit [docker-statcks](https://github.com/jupyter/docker-stacks)

## Usage

**Notice: DockerSpawner Config Must be Completed before that.**

First, You have to enter the command on shell
```shell
$ docker pull anysweetimes/nteract-notebook
```

Second, You must have to add following option into **jupyterhub_config.py**
```python
/* jupyterhub_config.py */
c.DockerSpawner.image = 'anysweetimes/nteract-notebook'
/* you must have to using Webserver such as nginx, apache and they have to serving nteract app.js */
c.DockerSpawner.args = ['--NteractConfig.asset_url="http://${your.serving.server.ip}"']
c.Spawner.default_url = '/nteract/edit'
```

Last, You enter the command 
```shell
$ docker run --rm --it --privileged -v /var/run/docker.sock:/var/run/docker.sock --net {your_docker_network} --name {your_docker_name} -p {host:container} {image_name}
```