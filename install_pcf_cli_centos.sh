#!/bin/bash

sudo wget -O /etc/yum.repos.d/cloudfoundry-cli.repo https://packages.cloudfoundry.org/fedora/cloudfoundry-cli.repo

sudo yum -y install cf-cli

sudo curl -o /usr/share/bash-completion/completions/cf "https://raw.githubusercontent.com/cloudfoundry/cli/master/ci/installers/completion/cf"

