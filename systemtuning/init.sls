basic-limits:
  file.managed:
    - name: /etc/security/limits.d/my-limits.conf
    - source: salt://systemtuning/files/systemtuning/my-limits.conf
 
basic-sysctl:
  file.append:
    - name: /etc/sysctl.conf
    - source: salt://systemtuning/files/systemtuning/sysctl.conf
 
basic-rc-local:
  file.append:
    - name: /etc/rc.local
    - source: salt://systemtuning/.d/systemtuning/rc-local.conf
 
basic-modprobe-dist:
  file.append:
    - name: /etc/modprobe.d/dist.conf
    - source: salt://systemtuning/files/systemtuning/modprobe-dist.conf