#! /bin/bash

dir=$1
driver_url=jdbc:git:$dir

echo "jdbc driver url = $driver_url"

java -jar calcite-git-0.2-SNAPSHOT-jar-with-dependencies.jar -n ' ' -p ' ' -u $driver_url -d com.github.fzakaria.calcite.adapter.git.GitDriver
