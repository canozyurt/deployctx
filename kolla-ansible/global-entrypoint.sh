#!/bin/bash

if [ ! -f /etc/kolla/passwords.yml ]; then
	cp /usr/local/share/kolla-ansible/etc_examples/kolla/passwords.yml /etc/kolla/passwords.yml
	kolla-genpwd
fi

if [ ! -f /etc/kolla/globals.yml ]; then
	cp /usr/local/share/kolla-ansible/etc_examples/kolla/globals.yml /etc/kolla/globals.yml
fi

exec "$@"
