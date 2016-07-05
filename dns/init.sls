/etc/resolv.conf:
  file:
    - managed
    - source: salt://dns/files/resolv.conf
    - user: root
    - mode: 644
    - template: jinja