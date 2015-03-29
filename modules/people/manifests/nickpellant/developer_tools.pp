class people::nickpellant::developer_tools {
  include docker
  include fig
  include virtualbox

  package { 'git-extras': ensure => present }
  package { 'github': provider => 'brewcask' }
  package { 'iterm2': provider => 'brewcask' }

  class { 'phantomjs':
    phantomenv_version => 'v0.0.9',
    phantomenv_repository => 'nickpellant/phantomenv'
  }
  phantomjs::version { '1.9.7': }
}
