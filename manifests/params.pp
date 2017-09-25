class apache:params{
	if $os::family == 'RedHat'{
	$apachename = 'httpd'
	} elseif  $os::family == 'Debian'{
	$apachename = 'apache2'
	} else{
	print "This is not as supported distribution list"
	}
	if $os::family == 'RedHat'{
	$conffile = '/etc/httpd/conf/httpd.conf'
	$conffsource = 'puppet:///modules/apache/httpd.conf'
	} elseif  $os::family == 'Debian'{
	$conffile = '/etc/apache2/apache2.conf'
	$confsource = 'puppet:///modules/apache/apache2.conf'
	} else{
	print "This is not as supported distribution list"
	}
}