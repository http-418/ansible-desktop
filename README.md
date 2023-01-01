This is a grab-bag of ansible plays for configuring my Linux desktops running Debian.

They should probably work on Ubuntu, but I don't have an adequate testing infrastructure.

`index.yml` is the top-level playbook that invokes others.

e.g:
```
sudo ansible-playbook -v --connection=local --inventory 127.0.0.1, index.yml
```

