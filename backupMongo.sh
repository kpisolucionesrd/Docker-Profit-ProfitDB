#!/bin/sh
DIR=`date +%d-%m-%y-%T`
DEST=/db_backups/$DIR
mkdir $DEST
mongodump --db CanalIndirecto --out $DEST
mongodump --db CanalDirecto --out $DEST
