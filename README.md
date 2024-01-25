# UbuntuNote

# VPN 
Instruction: https://notthebe.ee/blog/creating-your-own-vpn/
```bash
$ wget https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh
$ sudo bash openvpn-install.sh
```


### get ssh key
```bash
ssh-copy-id -p 22 root@ip 
```

### heavy
```bash
du -aBM 2>/dev/null | sort -nr | head -n 50 | more
```

### change ssh setting
```bash
vi /etc/ssh/sshd_config
'
Port 69 # ufw allow 69/tcp
PasswordAuthentication no
PermitRootLogin no
'
sudo systemctl restart ssh
```

### check auth log
```bash
sudo cat /var/log/auth.log
```

### port
```bash
ufw allow 22
ufw status
```
