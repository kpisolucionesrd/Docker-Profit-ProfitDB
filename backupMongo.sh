#!/bin/sh
DIR=`date +%d-%m-%y-%T`
DEST=/db_backups/$DIR
mkdir $DEST
mongodump --db CanalIndirecto $DEST
mongodump --db CanalDirecto $DEST
