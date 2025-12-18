#!/bin/bash
# Путь к логу
LOG_FILE="setup_Jak.log"

echo "--- Updating System ---" | tee -a $LOG_FILE
sudo apt update && sudo apt upgrade -y

echo "--- Installing Java 17, Gradle, Git ---" | tee -a $LOG_FILE
sudo apt install -y openjdk-17-jdk gradle git

echo "--- Verifying Versions ---" | tee -a $LOG_FILE
{
  java -version 2>&1
  gradle -v | grep Gradle
  git --version
} | tee -a $LOG_FILE
