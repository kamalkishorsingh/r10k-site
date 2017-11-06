class ntp::ntp_file inherits ntp {
$ntp_conf = '#manage by puppet
server 192.168.0.29 iburst
driftfile /var/lib/ntp/drift
'

file { '/etc/ntp.conf':
     ensure => 'file',
     content => $ntp_conf,
     owner  => 'root',
     mode  => '0664',
}
}

