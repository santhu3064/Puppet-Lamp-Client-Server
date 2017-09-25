class apache::vhosts{
if $::osfamily == 'RedHat'{
file {'/etc/httpd/conf.d/vhost.conf':
ensure => file,
content => template('apache/vhosts-rh.conf.erb'),
}
} elseif
 $osfamily == 'Debian'{
 file {"/etc/apache2/sites-available/$servername.conf":
 ensure => file,
 content => template('apache/vhosts-deb.conf.erb'),
 }
 } else {
 print "This is not a supported distribution"

 }
 }
