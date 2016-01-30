
### HISTORIC REPO: Apache Brooklyn has graduated!

This is the historical **incubator** repo for Apache Brooklyn. 
This version of the codebase is no longer active. 

**You're probably in the wrong place.**

Visit:

* **The Active Codebase**: at [http://github.com/apache/brooklyn/](http://github.com/apache/brooklyn/)
* **The Apache Brooklyn Homepage**: at [http://brooklyn.apache.org/](http://brooklyn.apache.org/)

### About the Incubator Project

Apache Brooklyn was in the Apache Incubator until the end of 2015, on version `0.9.0-SNAPSHOT`.
At this time it graduated to become a top-level Apache Software Foundation project,
and the code moved from `incubator-brooklyn` to `brooklyn` and several other projects `brooklyn-*`.

Versions `0.8.0-incubating` and before can be found in and built from this repo,
along with the last commit to `0.9.0-SNAPSHOT` from which development has continued
in `apache/brooklyn` and sub-projects.

The sub-directories in this project correspond to multiple separate repositories now in the `apache` org.
The link above to **[the Active Codebase](http://github.com/apache/brooklyn/)** started life exactly 
as a copy of [`brooklyn/`](brooklyn/) in this folder, 
as an uber-project for the other `brooklyn-*` folders, including the `server` and the `ui`,
which are now top-level repos in the `apache` org.


### To Build

This historic version of the code can be built with:

    mvn clean install

This creates a build of the last incubator SNAPSHOT version in `usage/dist/target/brooklyn-dist`. Run 
with `bin/brooklyn launch`. Although really you probably want **[the Active Codebase](http://github.com/apache/brooklyn/)**.

