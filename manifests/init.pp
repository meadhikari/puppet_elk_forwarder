class { 'logstashforwarder':
  manage_repo  => true,
  servers  => [ 'logstashserver7.cloudapp.net:5000' ],
  ssl_ca => '/etc/pki/tls/certs/logstash-forwarder.crt'

}

logstashforwarder::file { 'apache':
  paths  => [ '/var/log/apache/access.log' ],
  fields => { 'type' => 'apache' },
}
