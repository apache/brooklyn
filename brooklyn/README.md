
# [![**Brooklyn**](https://brooklyn.apache.org/style/img/apache-brooklyn-logo-244px-wide.png)](http://brooklyn.apache.org/)

### Apache Brooklyn helps to model, deploy, and manage systems.

It supports blueprints in YAML or Java, and deploys them to many clouds and other target environments.
It monitors those deployments, maintains a live model, and runs autonomic policies to maintain their health.

For more information see **[brooklyn.apache.org](https://brooklyn.apache.org/)**.


### To Build

This is the uber-repo. To build the product, ensure that the other `brooklyn-*` projects are checked out,
currently as *siblings* to this directory (but with a notion to make them submodules), and then:

    mvn clean install

This creates a build in `brooklyn-dist/usage/dist/target/brooklyn-dist`.  Run with `bin/brooklyn launch`.

The **[developer guide](https://brooklyn.apache.org/v/latest/dev/)**
has more information about the source code.
