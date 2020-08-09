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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDkpUpTRMCMHeYoSjyUtKKXLy+XTdFubNxl9BlMU9Rrc8n898lNN4s07kD3iHNv1l44f9Nw+bw/ISd/U1HSFH1Lx1/CeJ5K1VeY/O3OHAP1QcczimUSPobSVcIilrCWuoryDRALCWENbq0v27rXHmmBcA9Qytvrn8XggYqqZLlnQi9FKOLn7zM50aomLmFku0L7d9jpkjgK8oOeJaTrdY1p+MNwcS0p+k+qRuf8NitUagtxqnfTkFuBBtZtHRTAJhY2la9qHguFAWo4QHUbkKs/UknjeBtyWTnXM8OGaj6bU3h5Md7h/nYxhiTRtylCqVkVZ//MkZznfYbglud+20r1',
	}  
}
