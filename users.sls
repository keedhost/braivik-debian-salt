{% for usr in ['keed'] %}
{% if usr == 'keed' %}
{{ usr }}:
  user.present:
    - fullname: 'Andrii Kondratiev'
    - shell: '/usr/bin/fish'
    - home: '/home/keed'
    - uid: 1000
    - gid: 1000
    - groups:
      - keed
      - audio
      - video
      - plugdev
      - netdev
{% else %}
{{ usr }}:
  user.present
{% endif %}
{% endfor %}