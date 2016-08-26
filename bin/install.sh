#!/bin/sh

SCRIPT_PATH=$(readlink $0)
SCRIPT_DIR=$(dirname $SCRIPT_PATH)
PACKAGE_DIR=$(cd $(dirname $0) && cd $SCRIPT_DIR/../ && pwd)
PACKAGE_DIR_BASE=$(basename $PACKAGE_DIR)

PROJECT_NAME=$1
PROJECT_DIR=$(pwd)/$PROJECT_NAME
PROJECT_DIR_BASE=$(basename $PROJECT_DIR)

# TODO: Set $PROJECT_DIR current directory
# TODO: Check if the project dir exists

echo "\nCreate new Hatena Blog theme: "$PROJECT_NAME"\n"

echo "> mkdir $PROJECT_DIR_BASE"
mkdir $PROJECT_DIR

for name in lib scripts .gitignore index.scss package.json LICENSE.md; do
  echo "> cp -r $PACKAGE_DIR_BASE/$name $PROJECT_DIR_BASE/$name"
  cp -r $PACKAGE_DIR/$name $PROJECT_DIR/$name
done

echo "> Generationg README.md ..."
echo << EOS > $PROJECT_DIR/README.md
# $PROJECT_NAME
#
A theme for Hatena Blog.
EOS

echo "\nDONE!\n"
