# limited
exec { 'limit':
command  => "sed -i 's/holberton hard nofile 5/holberton hard nofile 5000/g' /etc/security/limits.conf",
provider => 'shell',
}

exec { 'limit soft':
command  => "sed -i 's/holberton soft nofile 4/holberton soft nofile 4000/g' /etc/security/limits.conf ",
provider => 'shell',
}
