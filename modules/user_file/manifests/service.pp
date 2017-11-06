class user_file::service inherits user_file {
  service {'ssh':
       ensure => running,
}
#include user_file::file
}
