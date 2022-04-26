class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd': 
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_keys { 'root@ip-172-31-39-87.eu-central-1.compute.internal':
                            ensure => present,
                            user => 'root',
                            type => 'ssh-rsa',
                            key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC2Nx6rA0DGOnOwCg4I0qtKoqSqorS+DEi5sL//HaWCZF4GJzRitiXshKRNBX746/Ude8SWuzVkOPeLHbYM3+pKrus3M8bE89zDGPl+zvzgK3+rKjBB6hWcTmipNZP0jJ0+VcCqvWcRkp8s7/kL+/LcA5MyRiqklw7jIMSo755ZZMf0ZOXzveiwepjTScwwP9uxH5zLq/S/VjYoZ7eI9ImBqeDIIpoxudE6HJW2reAp0k1pskM4Tp+cx8WYXxF59Xht3aVujPjtzFEIOm+O+7FSXbLWIhgtTFH1vVEeGCzKfKFzMjbSI54ZaSKTlnilshTOzvOdCGIbUUD/WmVscsD1',
        }
}
