#!/bin/bash

# Setting all objects within this file to be exported by default
# https://unix.stackexchange.com/a/430690
set -a

HELP_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

function prepare_config_file() {
    CONFIG_FILE_NAME="$1"
    env $(grep -v "^#" "$HELP_DIR/.env" | xargs -d "\n") envsubst < "$HELP_DIR/config/$CONFIG_FILE_NAME" > "$HELP_DIR/local_only/$CONFIG_FILE_NAME"
}
