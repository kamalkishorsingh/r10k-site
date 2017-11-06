class ntp::ntp_service inherits ntp {
service { 'ntp':
      ensure => 'running',
      enable => true,
      name  => 'ntp'
}

}

