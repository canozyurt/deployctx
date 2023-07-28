FROM ubuntu:20.04

WORKDIR /app

RUN apt update && apt install git python3-dev libffi-dev gcc libssl-dev python3-pip -y

RUN pip3 install 'ansible>=4,<6'

RUN pip3 install git+https://opendev.org/openstack/kolla-ansible@stable/yoga

RUN kolla-ansible install-deps

COPY kolla-ansible/yoga/inventory .

COPY kolla-ansible/global-entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
