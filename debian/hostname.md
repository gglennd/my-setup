### Change the hostname on Debian 12/11/10/9

Display the current hostname for Debian Linux
```bash
$ hostnamectl
```

Now you know how to view the current hostname. It is time to change it as per your needs. A hostname is nothing but a name that identifies your Debian box on a network. Typically for the server, you set it as FQDN (fully qualified domain name) such as 
"server1.company.com". The syntax is as follows:
```bash
$ hostnamectl set-hostname {name-here}
```

Next, edit the /etc/hosts file, run:
```bash
$ nano /etc/hosts
```

```yaml
127.0.0.1	localhost
127.0.0.1	debian.company debian

# The following lines are desirable for IPv6 capable hosts
::1     localhost ip6-localhost ip6-loopback
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
```
Save and close the file.
```bash
$ exit
```

#### Verify the change
```bash
$ hostnamectl
```