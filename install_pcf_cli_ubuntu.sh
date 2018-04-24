#!/bin/bash
wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | sudo apt-key add -
echo "deb http://packages.cloudfoundry.org/debian stable main" | \
	sudo tee /etc/apt/sources.list.d/cloudfoundry-cli.list

sudo apt-get update
sudo apt-get -y install cf-cli
sudo curl -o /usr/share/bash-completion/completions/cf "https://raw.githubusercontent.com/cloudfoundry/cli/master/ci/installers/completion/cf"

