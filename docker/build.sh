  
#!/usr/bin/env bash

set -e

TAG=$1

if [ -z "$TAG" ]; then
  echo "Error: Missing argument. Pass the full Docker Hub image path (organization/repository:tag), like 'docker/build.sh foo/bar:v0'"
fi

docker build --pull -t "${TAG}" -f docker/Dockerfile .
docker push "${TAG}"