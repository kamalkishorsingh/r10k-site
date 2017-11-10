class ntp::ntp_file inherits ntp {
 file { '/etc/ntp.conf':
     ensure => 'present',
     content => file('ntp/ntp_conf'),
     owner  => 'root',
     mode  => '0664',
  }
}

