# Debian 10 server (self) notes

## Network

```sh
sudo ifup eth0
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
+ `sudo usermod -aG group`

### Delete

+ `sudo deluser --remove-home user-name`


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

