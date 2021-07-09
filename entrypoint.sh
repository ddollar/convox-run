#!/bin/sh
set -ex

[ -n "${INPUT_HOST}" ] && export RACK_URL="https://convox:${INPUT_PASSWORD}@${INPUT_HOST}"
[ -n "${INPUT_PASSWORD}" ] && export CONVOX_PASSWORD=${INPUT_PASSWORD}
[ -n "${INPUT_RACK}" ] && export CONVOX_RACK=${INPUT_RACK}

convox run "${INPUT_SERVICE}" "${INPUT_COMMAND}" --app "${INPUT_APP}" --release "${INPUT_RELEASE}"
