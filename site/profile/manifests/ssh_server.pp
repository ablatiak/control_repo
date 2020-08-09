class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@localhost.localdomain':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => '',
	}  
}
