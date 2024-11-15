#!/bin/bash
- debug:
    msg: "segundo parcial"

- name: "Crear directorios en /home/goncalves/UTN-FRA_SO_Examenes/202406/ansible"
  file:
    path: "/tmp/2do_parcial/{{ item }}"
    state: directory
    recurse: yes
  with_items:
    - "alumno"
    - "equipo"

- name: "Agrego archivo desde template"
  template:
    src: template_01.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt

- name: "Agrego otro archivo desde template"
  template:
    src: info_ansible.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt

