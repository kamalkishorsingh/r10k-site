class user_file::file inherits user_file {
  file { '/tmp/jjjj':
      ensure => file,
#      mode   => 600,
#      source => 'puppet:///modules/ssh/sshd_config',
      notify => Service['ssh'],
    }

}
