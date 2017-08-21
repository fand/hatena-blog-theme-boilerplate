#!/bin/sh

SCRIPT_PATH=$(readlink $0)
SCRIPT_DIR=$(dirname $SCRIPT_PATH)
PACKAGE_DIR=$(cd $(dirname $0) && cd $SCRIPT_DIR/../ && pwd)
PACKAGE_DIR_BASE=$(basename $PACKAGE_DIR)

PROJECT_NAME=$1
PROJECT_DIR=$(pwd)/$PROJECT_NAME
PROJECT_DIR_BASE=$(basename $PROJECT_DIR)

# Check args
usage () {
    cat <<EOS
Usage:
    $(basename ${0}) [theme_name]

EOS
    exit 1
}
if [ -z "$PROJECT_NAME" ]; then
  echo "Invalid theme name: \"$PROJECT_NAME\""
  usage
fi
if [ -d $PROJECT_DIR ]; then
  echo "Directory \"$PROJECT_DIR\" already exists"
  usage
fi

echo "\nCreate new Hatena Blog theme: "$PROJECT_NAME"\n"

echo "> mkdir $PROJECT_DIR_BASE"
mkdir $PROJECT_DIR

for name in lib .gitignore bs-config.js index.scss LICENSE.md package.json; do
  echo "> cp -r $PACKAGE_DIR_BASE/$name $PROJECT_DIR_BASE/$name"
  cp -r $PACKAGE_DIR/$name $PROJECT_DIR/$name
done

echo "> Generating README.md ..."
cat << EOS > $PROJECT_DIR/README.md
# $PROJECT_NAME

A theme for Hatena Blog.
EOS

echo "\nDONE!\n"
