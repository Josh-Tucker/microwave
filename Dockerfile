FROM registry.fedoraproject.org/fedora-toolbox:38

COPY repos/ /repos/
RUN grep -rEh '^gpgkey=' /repos/ | sed 's/^.*=//' | xargs rpm --import
RUN mv /repos/* /etc/yum.repos.d/

COPY packages /
RUN dnf update -y && \
    dnf upgrade -y && \
    grep -v '^#' /packages | xargs dnf install -y
RUN rm /packages

#RUN chezmoi init --apply git@github.com:Josh-Tucker/dotfiles.git

RUN   ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/docker && \
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/flatpak && \ 
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/podman && \
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/rpm-ostree && \
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/transactional-update

