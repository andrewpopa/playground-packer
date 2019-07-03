# playground-packer
Packer box example repo

Source code for this example was taken form [here](https://github.com/nielsabels/packer-xenial64)

# prerequisites
- [git](https://git-scm.com/downloads)
- [vagrant](https://www.vagrantup.com/docs/installation/)
- [virtualbox](https://www.virtualbox.org/wiki/Downloads)
- [packer](https://www.packer.io/downloads.html)

## how to validate json file for packer
```bash
$ packer validate vbox.json
```

## how to validate json file for packer
```bash
$ packer build vbox.json
```

as result VB image would be created

```bash
$ ubuntu-1604-vbox.box
```

based on output from packer we will create `Vagrantfile` 