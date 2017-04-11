#!/usr/bin/env bash

# Installation
case "$IMAGE_FAMILY" in
    Debian|Ubuntu)
        apt-install syslog-ng syslog-ng-core
        ;;

    RedHat)
        yum-install syslog-ng
        ;;

    Alpine)
        apk-install syslog-ng
        ;;
esac

## Configuration
SYSLOG_NG_VERSION=$(syslog-ng --version | grep -E -e '^syslog-ng[ ]+[0-9]+\.[0-9]+' | head -n 1 | awk '{print $2}' | cut -f 1,2 -d .)

# Disable caps inside container
go-replace --mode=lineinfile
    -s "SYSLOGNG_OPTS" -r "SYSLOGNG_OPTS = --no-caps"
    -- /etc/default/syslog-ng

# Symlink configuration
ln -s -f /opt/docker/etc/syslog-ng/syslog-ng.conf /etc/syslog-ng/syslog-ng.conf

go-replace --mode=lineinfile
    -s "@version"      -r "@version: ${SYSLOG_NG_VERSION}"
    -- /etc/syslog-ng/syslog-ng.conf

# Ensure /var/lib/syslog-ng exists
mkdir -p /var/lib/syslog-ng
