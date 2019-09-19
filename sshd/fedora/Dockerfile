FROM fedora:latest
ENV container docker

# Update
RUN dnf -y update;

# systemd
RUN dnf -y install systemd autofs;
VOLUME [ "/sys/fs/cgroup" ]

# SSH
RUN dnf -y install openssh-server; \
systemctl enable sshd; \
systemctl enable autofs;

COPY ./entrypoint.sh /opt/docker-image/bin/entrypoint
RUN chmod +x /opt/docker-image/bin/entrypoint

CMD ["/opt/docker-image/bin/entrypoint"]