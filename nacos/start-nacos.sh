#!/bin/bash

# 简化的Nacos启动脚本
export JAVA_HOME="/opt/homebrew/opt/openjdk@17"

$JAVA_HOME/bin/java -Dnacos.standalone=true \
                     -Dnacos.home=/Users/linchenglie/电商比赛/nacos \
                     -Dnacos.core.auth.enabled=false \
                     -Dnacos.core.auth.server.identity.key=dummy \
                     -Dnacos.core.auth.server.identity.value=dummy \
                     -Dnacos.core.auth.plugin.nacos.token.secret.key=VGhpc0lzQVRlc3RTZWNyZXRLZXlGb3JOYWNvczMyQ2hhcnM= \
                     -Dserver.port=2340 \
                     -jar /Users/linchenglie/电商比赛/nacos/target/nacos-server.jar