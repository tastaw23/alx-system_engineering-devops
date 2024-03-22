# Puppet manifest to install Flask version 2.1.0 using pip3

package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  creates => '/usr/local/lib/python3.8/dist-packages/Flask-2.1.0.dist-info',
  path    => ['/usr/bin', '/usr/local/bin'],
  require => Package['python3-pip'],
}
