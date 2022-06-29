#!/bin/sh -e

export STUNNEL_CONF="/etc/stunnel/stunnel.conf"

if [[ -z "${STUNNEL_CONNECT}" ]]; then
    echo >&2 "STUNNEL_CONNECT values missing: "
    echo >&2 "  STUNNEL_CONNECT=${STUNNEL_CONNECT}"
    exit 1
fi

if [[ ! -s ${STUNNEL_CONF} ]]; then
    cat /srv/stunnel/stunnel.conf.template | envsubst | trim > ${STUNNEL_CONF}
fi

stunnel /etc/stunnel/redis-stunnel.conf