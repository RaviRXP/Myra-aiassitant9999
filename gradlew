#!/bin/sh
set -e

APP_HOME="$(cd "$(dirname "$0")" && pwd -P)"
GRADLE_OPTS="${GRADLE_OPTS:-"-Xmx2048m"}"

if command -v java >/dev/null 2>&1; then
    exec java $GRADLE_OPTS -jar "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" "$@"
fi

echo "ERROR: JAVA_HOME or java command not found." >&2
exit 1
