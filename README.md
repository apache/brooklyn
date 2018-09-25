
# [![**Brooklyn**](https://brooklyn.apache.org/style/img/apache-brooklyn-logo-244px-wide.png)](http://brooklyn.apache.org/)

### Apache Brooklyn helps to model, deploy, and manage systems.

It supports blueprints in YAML or Java, and deploys them to many clouds and other target environments.
It monitors those deployments, maintains a live model, and runs autonomic policies to maintain their health.

For more information visit **[brooklyn.apache.org]( https://brooklyn.apache.org/ )**,
where you'll find:
* **[ Pre-built binaries ]( https://brooklyn.apache.org/download/ )**
* **[ Getting Started instructions ]( https://brooklyn.apache.org/v/latest/start/running.html )**
* **[ A Product Tour ](https://brooklyn.apache.org/learnmore/)**


### Quick Start

This is the uber-repo. To build the entire codebase,
get this project and its sub-modules:

    git clone http://github.com/apache/brooklyn/
    cd brooklyn
    git submodule init
    git submodule update --remote --merge --recursive

And then, with jdk 1.8+ and maven 3.1+ installed:

    mvn clean install -Dno-go-client -Dno-rpm -Dno-deb

However, you won't be able to build the RPM/DEB packages, as well as the CLI. That's why we would recommand to use the
alternative: a docker container to build this project:

```bash
docker build -t brooklyn .
docker run -i --rm --name brooklyn -u $(id -u):$(id -g) \
      --mount type=bind,source="${HOME}/.m2/settings.xml",target=/var/maven/.m2/settings.xml,readonly \
      -v ${PWD}:/usr/build -w /usr/build \
      brooklyn mvn clean install -Duser.home=/var/maven -Duser.name=$(id -un)
```

You can speed this up by using your local .m2 cache:
```bash
docker run -i --rm --name brooklyn -u $(id -u):$(id -g) \
      -v ${HOME}/.m2:/var/maven/.m2 \
      -v ${PWD}:/usr/build -w /usr/build \
      brooklyn mvn clean install -Duser.home=/var/maven -Duser.name=$(id -un)
```

The results are in `brooklyn-dist/dist/target/`, including a tar and a zip.
Or to run straight after the build, do:

    pushd brooklyn-dist/dist/target/brooklyn-dist/brooklyn/
    bin/brooklyn launch


### Resources

<!--- BROOKLYN_VERSION_BELOW -->
The **[Developers](https://brooklyn.apache.org/developers/)** section of the main website contains more detail on working with the codebase. There is also a more **Developer Guide** specific to each version, including [this branch (1.0.0-SNAPSHOT)](https://brooklyn.apache.org/v/1.0.0-SNAPSHOT/dev/), [latest stable](https://brooklyn.apache.org/v/latest/dev/), and [older releases](https://brooklyn.apache.org/meta/versions.html).

Useful topics include:

* getting the **[source code](https://brooklyn.apache.org/developers/code/)**

* **[setting up Git](https://brooklyn.apache.org/developers/code/git-more.html)** with forks, submodules (or alternatively [avoiding submodules](https://brooklyn.apache.org/developers/code/git-more.html#not-using-submodules)) and other productivity hints

* the **[maven build](http://brooklyn.apache.org/v/latest/dev/env/maven-build.html)** and what to do on build errors

<!--- BROOKLYN_VERSION_BELOW -->
* **[project structure](https://brooklyn.apache.org/v/1.0.0-SNAPSHOT/dev/code/structure.html)** of the codebase and submodules

* the **[people](https://brooklyn.apache.org/community/)** behind Apache Brooklyn

### License

This software is distributed under the Apache License, version 2.0, copyright (c) The Apache Software Foundation and contributors. Please see the LICENSE file for (1) the full text of the Apache License, followed by (2) notices for bundled software and (3) licenses for bundled software.
