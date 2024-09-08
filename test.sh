#!/bin/bash

# bungee.jar をバックグラウンドで実行
(
    cd bungee || { echo "Failed to cd into bungee"; exit 1; }
    echo "Starting bungee.jar..."
    java -jar bungee.jar &
) &

# velocity.jar をバックグラウンドで実行
(
    cd velocity || { echo "Failed to cd into velocity"; exit 1; }
    echo "Starting velocity.jar..."
    java -jar velocity.jar &
) &

# server.jar をバックグラウンドで実行
nohup sh -c "cd server && java -jar server.jar" > server.log 2>&1 &

# スクリプト自身はすぐに終了します
echo "bungee.jar and velocity.jar are running in the background."
echo "server.jar is running in the background."
