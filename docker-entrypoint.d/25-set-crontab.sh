#!/bin/sh

if test -n "${CRON_SCRIPT}"; then
  echo "${CRON_SCRIPT}" > /etc/cron.${CRON_SCHEDULE:-d}/docker-entrypoint
  if test -n "${CRON_SCHEDULE}"; then
    chmod +X /etc/cron.${CRON_SCHEDULE}/docker-entrypoint
  fi
fi
