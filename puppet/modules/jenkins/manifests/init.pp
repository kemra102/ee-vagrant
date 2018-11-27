class jenkins() {
  yumrepo { 'jenkins':
    ensure   => 'present',
    baseurl  => 'http://pkg.jenkins.io/redhat-stable',
    gpgcheck => 1,
    gpgkey   => 'https://jenkins-ci.org/redhat/jenkins-ci.org.key',
  }

  package { 'java-1.8.0-openjdk': }

  package { 'jenkins':
    ensure  => 'present',
    require => [
      Package['java-1.8.0-openjdk'],
      Yumrepo['jenkins'],
    ],
  }

  service { 'jenkins':
    ensure  => 'running',
    enable  => true,
    require => Package['jenkins'],
  }
}
