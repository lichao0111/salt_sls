openssh:
  pkg:
    - installed
  cmd.run:
    - name: mkdir -p /root/.ssh
    - unless: test -d /root/.ssh

/root/.ssh/authorized_keys
  file.managed:
    - source: salt://ssh/files/id_rsa.pub
    - user: root
    - group: root
    - mode: 644



