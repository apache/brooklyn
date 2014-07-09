# [![**Brooklyn**](http://brooklyncentral.github.io/style/images/brooklyn.gif)](http://brooklyncentral.github.com)

Brooklyn is a library and control plane for deploying and managing distributed applications.

See [brooklyncentral.github.com](http://brooklyncentral.github.com) for details and examples.

Brooklyn's main emphasis is managing live applications (e.g auto-scaling, exception handling, auto recovery from failure, and working across multiple clouds). Brooklyn considers deployment part of management, like the opening move in a game of chess. (Distributed-application-management-chess, no less).

### Deployment

Brooklyn enables single-click deployment of complex applications, while tying-in with other great tools, and reusing and complementing existing workflows.

Use Brooklyn to create an Application Blueprint, instructing Brooklyn how to wire together your applications and components, customizing and extending them as needed. Share the blueprint with others (optionally using Brooklyn's Web Service Catalog) to allow them to single-click deploy your application onto the infrastructure of their choice.

Brooklyn features:

* out-of-the-box support for many common software components.
* integration with jclouds, allowing deployment to the majority of public and private clouds, in addition to pools of fixed IP machines.
* integration with Apache Whirr (and thereby Chef and Puppet), allowing deployment of well-known services such as Hadoop and elasticsearch (and you can still use POBS, plain-old-bash-scripts).
* integration with PaaS's such as OpenShift, allowing use of PaaSes alongside self-built clusters, for maximum flexibility.

In DevOps fashion, Brooklyn allows applications and roll-outs to be version controlled, tested programatically, and reused across locations and contexts. Develop on localhost, then reuse the same application descriptor to deploy to QA, and then to your production environment.

### Management

Brooklyn enables [autonomic management](http://en.wikipedia.org/wiki/Autonomic_computing) of applications. (i.e. many small, local, distributed control loops).

Management policies can be attached to every component part in an application, and to logical groupings of components (clusters, fabrics). Policies can implement both technical and non-technical (business) requirements.

At runtime, policies have access to all aspects of the deployment, including deployment topology (hierarchical) and locations (machines, PaaSes, and jurisdictions), as well as scripts, instrumentation, and operational goals and constraints. This means that once the application is launched, the policies are all set to keep the application running optimally, based on whatever optimally means in that context.

These deployment patterns and management policies are expressed as Java (or Groovy) classes, open-sourced here and giving you full control over what you want to happen. More importantly, however, this code can be shared, improved, and extended.

### Use As a Library

Import Brooklyn into your application to natively use its distributed management smarts. e.g. [Cloudera's Certification Cluster Builder Tool](http://www.cloudsoftcorp.com/blog/creating-a-cloudera-certification-cluster-with-cloudsofts-brooklyn/).

### Use As a Control Plane

Alternatively, use Brooklyn as an integrated-stand-alone management node for your application or bespoke platform.

## Quick Start

Three quick start options are available:

* The [getting started guide](http://brooklyncentral.github.io/use/guide/quickstart/index.html) will step you through downloading and installing Brooklyn and running the examples.
* Alternatively, [download the latest release](https://github.com/brooklyncentral/brooklyn/tarball/master) (tgz),
* or, fork or clone the repo: `git clone git://github.com/brooklyncentral/brooklyn.git` then `mvn clean install`.

## Community


* Have a question that's not a feature request or bug report? Ask on the mailing lists: [brooklyn-users](http://groups.google.com/group/brooklyn-users) or [brooklyn-dev](http://groups.google.com/group/brooklyn-dev)
* Chat with us over IRC. On the `irc.freenode.net` server, in the `#brooklyncentral` channel.
* Follow [@brooklyncentral on Twitter](http://twitter.com/brooklyncentral).


## Bug Tracker

Have a bug or a feature request? [Please open a new issue](https://github.com/brooklyncentral/brooklyn/issues).


## Contributing

Your input will be welcomed.

See the [full guide to contributing](http://brooklyncentral.github.com/dev/how-to-contrib.html) on brooklyncentral.github.com.

Thanks!

----
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
