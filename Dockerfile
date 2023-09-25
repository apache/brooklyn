# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

# For all Brooklyn, we use a debian distribution instead of alpine as there are some libgcc incompatibilities with GO
# and PhantomJS
FROM maven:3.9.4-amazoncorretto-8-debian
# was 3.8.6-jdk-8 # but it is giving errors on the brooklyn apache build server
#6 4.655 E: Failed to fetch http://deb.debian.org/debian-security/pool/updates/main/l/linux/linux-libc-dev_5.10.179-1_amd64.deb  404  Not Found [IP: 151.101.22.132 80]

# Install necessary binaries to build brooklyn
RUN apt-get update

RUN apt-get install -y \
    `# common tools` git-core rsync sudo vim less curl gpg tar zip procps bzip2 \
    `# parsing utils xml json etc` libxml2 libxml2-utils jq \
    `# usual build tools for eg nodejs modules` make automake autoconf libtool nasm gcc
RUN apt-get install -y \
    `# builders for linux installers` rpm dpkg pkg-config \
    `# libraries for nodejs image processing` libpng-dev libjpeg-progs pngquant \
    `# node; maven installs this usually, but handy to have for testing` nodejs

RUN cd /tmp \
&& curl -O https://dl.google.com/go/go1.15.8.linux-amd64.tar.gz \
&& CKSUM=$(sha256sum go1.15.8.linux-amd64.tar.gz | awk '{print $1}') \
&& [ ${CKSUM} = "d3379c32a90fdf9382166f8f48034c459a8cc433730bc9476d39d9082c94583b" ] \
&& tar xf go1.15.8.linux-amd64.tar.gz \
&& rm go1.15.8.linux-amd64.tar.gz \
&& chown -R root:root ./go \
&& mv go /usr/local

ENV PATH="${PATH}:/usr/local/go/bin"
# Make sure the /.config && /.npm (for UI module builds) is writable for all users
RUN mkdir -p /.config && chmod -R 777 /.config
RUN mkdir -p /.npm && chmod -R 777 /.npm

# Make sure the /var/tmp (for RPM build) is writable for all users
RUN mkdir -p /var/tmp/ && chmod -R 777 /var/tmp/

# Make sure the /var/maven is writable for all users
RUN mkdir -p /var/maven/.m2/ && chmod -R 777 /var/maven/
ENV MAVEN_CONFIG=/var/maven/.m2
ENV OPENSSL_CONF=/etc/ssl
