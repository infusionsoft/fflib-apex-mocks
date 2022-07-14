#!/bin/bash

echo "Creating new scratch org..."
sfdx force:org:create -d 30 -f config/project-scratch-def.json --setdefaultusername
echo "Creating new scratch org complete."

echo "Install Apex Mocks"
sfdx shane:github:src:install -c -g apex-enterprise-patterns -r fflib-apex-mocks -p sfdx-source/apex-mocks
echo "Done installing Apex Mocks"

echo "Install Apex Common"
sfdx shane:github:src:install -c -g apex-enterprise-patterns -r fflib-apex-common -p sfdx-source/apex-common
echo "Done installing Apex Common"

./scripts/setup/configureScratchOrg.sh
