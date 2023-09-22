#!/bin/bash

mv site-container.yml.sample site-container.yml
mv site.yml.sample site.yml

export ANSIBLE_HOST_KEY_CHECKING=False

cp -R /tmp/.ssh /root/.ssh
chmod 700 /root/.ssh
chmod 644 /root/.ssh/id_rsa.pub
chmod 600 /root/.ssh/id_rsa

exec "$@"
