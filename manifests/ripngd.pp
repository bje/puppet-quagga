#Class quagga::ripngd

class quagga::ripngd inherits quagga {

    file { '/etc/quagga/ripngd.conf':
      mode    => '0644',
      owner   => 'quagga',
      group   => 'quagga',
      content => template('quagga/ripngd.conf.erb'),
      notify  => Service['quagga'],
      require => Package['quagga']
    }
}
