class apache:params{
	if $os::family == 'RedHat'{
	$apachename = 'httpd'
	} elseif  $os::family == 'Debian'{
	$apachename = 'apache2'
	} else{
	print "This is not as upported distirbution list"
	}

}