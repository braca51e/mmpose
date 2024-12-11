#!/bin/bash
set -e 

LOCAL_V=/home/luis/Documents/projects/pose/mmpose

xhost local:root

docker run --name mmpose \
 --rm -it --network=host --ipc=host \
  -v /tmp/.X11-unix:/tmp.X11-umix:rw \
  --entrypoint /bin/bash \
  -v $LOCAL_V:/debug \
  --env DISPLAY --privileged --gpus all \
  mmpose:latest