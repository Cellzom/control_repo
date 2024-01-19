class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDN80bIdnpSH6Q2bz17wQE6+yZJFEayFN9CxZd7DMaKdc2C/9wJqdHWQq/mDt5Sblk90mEMgJ88R36kWQA7PSZaq+A0y24Wp4b1vzs8pxQ1reHCdeEkhHkeYV5MBVkJrSEMWKaKuh25jqnPQAkGOBYtpdyS6DaC+Ma9+mVHmse87+ptxYJKAkeEpW91He9dgaCXduoVRprXly3lEE/Zl1h1NqyA8NGUrUIPxLzlE4XfG6hSIiViHXPrdOfqUYhWIBUpOmfKoHQtt+B9CRagnCbt+aJGE89/lCZEhzZ51Hcm7vDTpJq+EdNq7YQ3Etbk0iXKCKP4Ek0i5bYAKH1Q7t89',
	}  
}
