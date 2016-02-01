
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


### Resources

The developer guide [for this version 0.9.0-SNAPSHOT](https://brooklyn.apache.org/v/0.9.0-SNAPSHOT/dev/) <!-- BROOKLYN_VERSION --> contains more detail on:
* working with **[source code](https://brooklyn.apache.org/v/0.9.0-SNAPSHOT/dev/code)**  <!-- BROOKLYN_VERSION -->
* using **[git sub-modules](https://brooklyn.apache.org/v/0.9.0-SNAPSHOT/dev/code/submodules.md)** effectively <!-- BROOKLYN_VERSION -->
* **[avoiding](https://brooklyn.apache.org/v/0.9.0-SNAPSHOT/dev/code/no-submodules.md)** sub-modules <!-- BROOKLYN_VERSION -->
* **[project structure](https://brooklyn.apache.org/v/0.9.0-SNAPSHOT/dev/code/structure.md)** <!-- BROOKLYN_VERSION -->
* the **[people](https://brooklyn.apache.org/community/index.html)** behind Apache Brooklyn
