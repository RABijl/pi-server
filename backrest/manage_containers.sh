#!/usr/bin/env bash

DOCKER_COMMAND="stop"
if [ $# -ne 0 ]; then
	if [ "$1" = "start" ]; then
		DOCKER_COMMAND="start"
	fi
fi

IFS=','
read -r -a CONTAINERS <<<"$BACKUP_LIST"

for name in "${CONTAINERS[@]}"; do
	echo -n "${DOCKER_COMMAND} "
	docker container "${DOCKER_COMMAND}" "${name}" || exit 1
done
echo "done executing ${DOCKER_COMMAND} on: \"${BACKUP_LIST}\""
