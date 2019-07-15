#!/bin/bash

# 使い方
#
# 使用可能な環境：PostgreSQL verison,Bash version
#
# 1.migrate.shは、指定されたPostgreSQLDBから～のデータを抽出し、CSVとして出力する用途で使用します。
# 2.データを抽出したいDBが存在するサーバに権限のあるユーザでログインし、'migrate.sh -d DB_NAME' のコマンドで使用してください。
# https://qiita.com/hirohiro77/items/7fe2f68781c41777e507

echo "Hello"

SCRIPTDIR=$(cd $(dirname $BASH_SOURCE); pwd)

echo "$SCRIPTDIR"


if [ "$1" = "-d" ]
then 
  echo "'psql'コマンドで$2DBに接続する。" > source.csv
  while read row; do
    #column1=`echo ${row} | cut -d , -f 3`
    sed -e 's/""/リナックス/g' >> source.csv
  done < test.csv
  
else
  echo " 1.migrate.shは、指定されたPostgreSQLDBから～のデータを抽出し、CSVとして出力する用途で使用します。"
  echo " 2.データを抽出したいDBが存在するサーバに、適切な権限のユーザでログインし、'migrate.sh -d DB_NAME' のコマンドで使用してください。"
    
fi
