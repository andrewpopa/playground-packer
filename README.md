# playground-packer
Packer box example repo

Source code for this example was taken form [here](https://github.com/nielsabels/packer-xenial64)

# prerequisites
- [git](https://git-scm.com/downloads)
- [vagrant](https://www.vagrantup.com/docs/installation/)
- [virtualbox](https://www.virtualbox.org/wiki/Downloads)
- [packer](https://www.packer.io/downloads.html)

## clone repository to use it
```
git clone git@github.com:andrewpopa/playground-packer.git
cd playground-packer
```

## validate packer config(json) file
```bash
$ packer validate nginx.json
```

## build the box
```bash
$ packer build nginx.json
```

as result virtualbox image would be created

```bash
user@pc ~/path/playground-packer $ ls -l *box
-rw-r--r--  1 user  staff  631496275 Jul  4 17:56 nginx-vbox.box
```


## add created box to vagrant
```
vagrant box add --name nginx64 --provider virtualbox nginx64-vbox.box
```

## configure kitchen test on local pc (mac) - rbenv
```
brew install rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile
rbenv init
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
```

## configure ruby environment with rbenv
```
rbenv install 2.3.1
rbenv local 2.3.1
rbenv versions
gem install bundler
bundle install
```

## validate the box

```
bundle exec kitchen converge
bundle exec kitchen verify
bundle exec kitchen destroy
```

Enjoy!