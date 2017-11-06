class ntp {
package { 'ntp': 
           ensure => 'present',
}

include ntp::ntp_file
include ntp::ntp_service

}
