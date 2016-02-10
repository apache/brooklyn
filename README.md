
# [![**Brooklyn**](https://brooklyn.apache.org/style/img/apache-brooklyn-logo-244px-wide.png)](http://brooklyn.apache.org/)

### Apache Brooklyn helps to model, deploy, and manage systems.

It supports blueprints in YAML or Java, and deploys them to many clouds and other target environments.
It monitors those deployments, maintains a live model, and runs autonomic policies to maintain their health.

For more information visit **[ brooklyn.apache.org ]( https://brooklyn.apache.org/ )**,
where you'll find:
* **[ Pre-built binaries ]( https://brooklyn.apache.org/download/ )**
* **[ Getting Started instructions ]( https://brooklyn.apache.org/v/latest/start/running.html )**
* **[ A Product Tour ](https://brooklyn.apache.org/learnmore/index.html)**


### Quick Start

This is the uber-repo. To build the entire codebase, 
get this project and its sub-modules:

    git clone http://github.com/apache/brooklyn/
    cd brooklyn
    git submodule init
    git submodule update --remote --merge --recursive
    
And then:

    mvn clean install

The results are in `brooklyn-dist/usage/dist/target/`. 
To run, you might:

    pushd brooklyn-dist/usage/dist/target/brooklyn-dist/brooklyn/
    bin/brooklyn launch

For more on the code, sub-modules, not using sub-modules, and other topics, see below.


### Resources

<!--- BROOKLYN_VERSION_BELOW -->
The **[Developers](https://brooklyn.apache.org/developers/index.html) section** of the main website and the **Developer Guide** contains more detail on working with the codebase. It is available for [this version/branch -- 0.9.0-SNAPSHOT](https://brooklyn.apache.org/v/0.9.0-SNAPSHOT/dev/) (permalink, also used below) or for [the latest released version](https://brooklyn.apache.org/v/latest/dev/).

Useful topics include:

* getting the **[source code](https://brooklyn.apache.org/developers/code/)**

* [setting up Git](https://brooklyn.apache.org/developers/code/git-more.html) with forks, submodules (or alternatively avoiding submodules) and other productivity hints

<!--- BROOKLYN_VERSION_BELOW -->
* **[project structure](https://brooklyn.apache.org/v/0.9.0-SNAPSHOT/dev/code/structure.html)**

* the **[people](https://brooklyn.apache.org/community/index.html)** behind Apache Brooklyn
