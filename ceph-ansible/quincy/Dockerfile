FROM ubuntu:22.04

WORKDIR /app

RUN apt update && apt install git python3-pip -y

RUN git clone https://github.com/ceph/ceph-ansible.git -b stable-7.0

RUN pip3 install -r ceph-ansible/requirements.txt

RUN ansible-galaxy install -r ceph-ansible/requirements.yml

COPY ceph-ansible/global-entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

WORKDIR /app/ceph-ansible

ENTRYPOINT ["/entrypoint.sh"]
