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
(
    cd server || { echo "Failed to cd into server"; exit 1; }
    echo "Starting server.jar..."
    java -jar server.jar &
) &

# スクリプト自身はすぐに終了します
echo "All Java processes have been started."

