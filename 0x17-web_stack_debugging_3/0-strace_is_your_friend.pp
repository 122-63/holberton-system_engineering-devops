# Strace is your friend
exec { 'error fixing':
command  => 'sed -i s/phpp/php/g  /var/www/html/wp-settings.php',
provider => shell,
}