#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u durgabhavania -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG durgabhavania/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push durgabhavania/$IMAGE:$BUILD_TAG
