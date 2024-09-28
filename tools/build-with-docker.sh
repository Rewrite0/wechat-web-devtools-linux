#!/bin/bash

root_dir=$(cd `dirname $0`/.. && pwd -P)
echo "$(id -u):$(id -g)"
docker run -u "$(id -u):$(id -g)" --rm -i -e "ACTION_MODE=${ACTION_MODE:-false}" -w /workspace -v "$root_dir:/workspace" jiyecafe/wechat-devtools-build:v1.0.4 \
    bash ./docker/entrypoint