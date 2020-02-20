# Debian 10 server (self) notes

## Network

### Bring up `eth0`

```sh
sudo ifup eth0
```

### Chat with `nc`

On the server `192.168.0.12`:

```sh
nc -l -vv -p 11111
```

On the client:

```sh
nc 192.168.0.12 11111
```

## Firewall

+ Install: `sudo apt install ufw`
+ Check: `sudo ufw status verbose`
+ Enable: `sudo ufw enable`
+ Disable: `sudo ufw disable`
+ Basic:
	```sh
	sudo ufw default deny incoming
	sudo ufw default allow outgoing
	sudo ufw allow openssh
	sudo ufw allow http
	sudo ufw allow https
	```

## Users

### Add

+ `sudo adduser user-name`
+ `sudo usermod -aG grup`

### Delete

+ `sudo deluser --remove-home user-name`


### Quota

#### Enable

```sh
sudo quotacheck -ugm /home
```

#### Setting quotas

```sh
sudo wdquota -u user-name
```

and replace `0` from `soft` with `100M` and `hard` with `110M`.

#### Another way to set quota

```sh
sudo setquota -u user-name 100M 110M 0 0 /home
```

#### Grace period

```sh
sudo setquota -t 864000 864000 /home
```

sets the block and inode grace time to 10 days.

#### Checking quota

```sh
sudo quota -vs user-name
```

#### Show quota reports

```sh
sudo repquota -s /
```

## MySQL

+ `sudo apt install mariadb-server`
+ As `root`: `mysql_secure_installation`

### Create admin user


```sh
mysql -u root -p

```

```sql
create user 'admin'@'localhost' identified by 'parola';
grant all privileges on *.* to 'admin'@'localhost';
flush privileges;
```


## tmux

+ New session: `tmux new -s session-name`
+ List sessions: `tmux ls`
+ Atttach to a session: `tmux a -t session-name`

