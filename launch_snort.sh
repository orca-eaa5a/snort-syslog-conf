#!/bin/bash
snort -c /etc/snort/snort.conf -i {interface} -K ascii -A fast -s