/home/keed/.screenrc:
  file.managed:
    - user: keed
    - group: keed
    - mode: 0644
    - source:
      - salt://files/configs/.screenrc

/home/keed/.zshrc:
  file.managed:
    - user: keed
    - group: keed
    - mode: 0644
    - source:
      - salt://files/configs/.zshrc

/home/keed/.bashrc:
  file.managed:
    - user: keed
    - group: keed
    - mode: 0644
    - source:
      - salt://files/configs/.bashrc
