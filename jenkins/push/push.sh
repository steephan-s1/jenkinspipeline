#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u sibu123 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG sibu123/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push sibu123/$IMAGE:$BUILD_TAG
