class ntp::ntp_service inherits ntp {

 case $facts['os']['family'] {
	'RedHat' : {
         $ntp_service = 'ntpd'
         }
	'Debian' : {
         $ntp_service = 'ntp'
         }
         default : {
         fail("your ${facts['os']['family']} is not tested")
         }
 }
service { 'ntp_service':
      ensure => 'running',
      enable => true,
      name  =>  $ntp_service,
        }

}

