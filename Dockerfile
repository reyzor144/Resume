FROM fedora:34

RUN dnf install -y texlive-scheme-full

COPY cv /cv

COPY script.sh /

RUN chmod +x /script.sh

ENTRYPOINT [ "/script.sh" ]