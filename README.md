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

based on output from packer we will create `Vagrantfile`  and install `nginx`

```bash
vagrant@ubuntu-1604:~$ curl http://127.0.0.1:80
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
```