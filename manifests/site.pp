node 'agent' {
file { '/tmp/suraj':
  ensure  => 'absent',
  mode	=> '0644',
  purge => true,
    force => true,
#  content => 'hello my name is kamal'
}

}
