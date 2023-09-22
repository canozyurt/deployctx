FROM ubuntu:18.04

WORKDIR /app

RUN apt update && apt install git python-dev python-pip libffi-dev gcc libssl-dev python-selinux python-setuptools -y

RUN pip install 'ansible<2.10'

RUN pip install git+https://opendev.org/openstack/kolla-ansible@stein-em

COPY kolla-ansible/yoga/inventory inventory/kolla

COPY kolla-ansible/global-entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
