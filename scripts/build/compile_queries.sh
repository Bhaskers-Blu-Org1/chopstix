#!/usr/bin/env sh
#
# ----------------------------------------------------------------------------
#
# Copyright 2019 IBM Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# ----------------------------------------------------------------------------
#

############################################################
# NAME        : prep-sql.sh
# DESCRIPTION : Transform SQL files into C headers
# ARGUMENTS   :
#    out : Output header file
#    queries : List of queries
############################################################

out=$1 ; shift

echo "#pragma once" > "$out"
echo "" >> "$out"

for q in "$@" ; do
    echo "#include \"sql/$q.h\"" >> "$out"
done