FROM debian:latest
ENV container docker

# Update
RUN apt -y update && apt -y upgrade;

# systemd
RUN apt -y install systemd autofs;
VOLUME [ "/sys/fs/cgroup" ]

# SSH
RUN apt -y install openssh-server; \
systemctl enable sshd; \
systemctl enable autofs;

COPY ./entrypoint.sh /opt/docker-image/bin/entrypoint
RUN chmod +x /opt/docker-image/bin/entrypoint

CMD ["/opt/docker-image/bin/entrypoint"]