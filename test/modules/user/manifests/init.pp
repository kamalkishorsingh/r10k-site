class user {
      user { 'test':
            ensure      => 'present',
            managehome  => true,
            password   => '$1$WUGGhMEX$mK5gCvlvnNk7I.ojZSxSV0',
#            password    => generate('/bin/sh', '-c', "mkpasswd -m sha-512 ${password} | tr -d '\n'"),
} 
}
