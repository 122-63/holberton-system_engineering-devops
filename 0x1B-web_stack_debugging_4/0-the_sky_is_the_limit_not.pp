# puppet-lint
exec { 'Volume Requests':
    command  => 'sed -i s/15/4096/g /etc/default/nginx && sudo service nginx restart',
    provider => 'shell',
}