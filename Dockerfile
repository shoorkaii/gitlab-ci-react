#
# GitLab CI react-native-android v0.1.1
#
# https://hub.docker.com/r/shoorkaii/gitlab-ci-react/
# https://github.com/shoorkaii/gitlab-ci-react


FROM ubuntu:18.04
MAINTAINER Reza Ranjkesh Shoorkaii <shoorkaii@gmail.com>

RUN apt-get -qq update \
    &&apt-get install -qqy --no-install-recommends\
    curl\
    bzip2 \
    apt-utils\
    git-core\
    docker.io \
    npm\
    nodejs

RUN npm install -g yarn
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*