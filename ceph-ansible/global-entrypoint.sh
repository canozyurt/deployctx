#!/bin/bash

mv site-container.yml.sample site-container.yml
mv site.yml.sample site.yml

exec "$@"
