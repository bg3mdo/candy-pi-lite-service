#!/usr/bin/env bash

# Copyright (c) 2018 CANDY LINE INC.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

PRODUCT="CANDY Pi Lite Board"
PRODUCT_DIR_NAME="candy-pi-lite"
DEBUG="1"

function init {
  . /opt/candy-line/${PRODUCT_DIR_NAME}/_common.sh > /dev/null 2>&1
}

function assert_suspended {
  if [ ! -f "${PPPD_RUNNING_FILE}" ]; then
    log "The connection is already suspended"
    exit 3
  fi
}

function disestablish {
  poff -a
  while true;
  do
    RET=`candy service version`
    if [ "$?" == 0 ]; then
      break
    fi
  done
}

init
assert_root
assert_service_is_running
assert_disconnected
disestablish
