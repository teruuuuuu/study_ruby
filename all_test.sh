#!/bin/bash

function test_ruby_script () {
    echo $1 "test start"
    ruby $1
}
export -f test_ruby_script

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

find $SCRIPT_DIR/test -name "*spec.rb" -type f | xargs -I % bash -c "test_ruby_script %"