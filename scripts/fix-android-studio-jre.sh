#/bin/bash

sudo mv /opt/android-studio/jre "/opt/android-studio/jre_backup_$(date '+%d-%m-%Y')"

sudo cp -r /usr/lib/jvm/java-8-jdk /opt/android-studio/jre

