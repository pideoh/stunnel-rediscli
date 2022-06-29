#!/bin/sh -e

export STUNNEL_CONF="/etc/stunnel/stunnel.conf"

if [[ -z "${STUNNEL_CONNECT}" ]]; then
    echo >&2 "STUNNEL_CONNECT values missing: "
    echo >&2 "  STUNNEL_CONNECT=${STUNNEL_CONNECT}"
    exit 1
fi

cat /etc/stunnel/stunnel.conf.template | envsubst > ${STUNNEL_CONF}
stunnel /etc/stunnel/stunnel.conf
