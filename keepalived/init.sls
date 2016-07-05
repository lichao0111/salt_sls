keepalived:
  pkg.installed:
    - name: keepalived
  service.running:
    - name: keepalived
    - enable: True
    - watch:
      - pkg: keepalived
      - file: /etc/keepalived/keepalived.conf
    - require:
      - service: haproxy

/etc/keepalived/keepalived.conf:
  file.managed:
    - source: salt://keepalived/files/keepalived.conf
    - template: jinja
    - user: root
    - group: root
    - mode: 644