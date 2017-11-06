class user_file {
user { 'kamal':
    ensure => 'present',
    uid => '1005',
    shell => '/bin/bash',
    home => '/home/kamal',
   
   
}
if ($operatingsystem == "Ubuntu") { 
   $message = "This machine OS is of the type $operatingsystem \n" 
} else { 
   $message = "This machine is unknown \n" 
} 

file { "/tmp/machineOperatingSystem.txt": 
   ensure => file, 
   content => "$message" 
}
#include user_file::file 
#include user_file::service
}

