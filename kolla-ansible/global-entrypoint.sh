#!/bin/bash
set -e

if [ ! -f /etc/kolla/passwords.yml ]; then
	cp /usr/local/share/kolla-ansible/etc_examples/kolla/passwords.yml /etc/kolla/passwords.yml
	kolla-genpwd
fi

if [ ! -f /etc/kolla/globals.yml ]; then
	cp /usr/local/share/kolla-ansible/etc_examples/kolla/globals.yml /etc/kolla/globals.yml
fi

export ANSIBLE_HOST_KEY_CHECKING=False

cp -R /tmp/.ssh /root/.ssh
chmod 700 /root/.ssh
chmod 644 /root/.ssh/id_rsa.pub
chmod 600 /root/.ssh/id_rsa

exec "$@"
