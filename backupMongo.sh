#!/bin/sh
DIR=`date +%d-%m-%y-%T`
DEST=/db_backups/$DIR
mkdir $DEST
mongodump --db --out CanalIndirecto $DEST
mongodump --db --out CanalDirecto $DEST
