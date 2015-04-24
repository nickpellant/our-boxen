class projects::github::abigimportant::filmstacks-v1 {
  include php::5_4

  boxen::project { 'filmstacks-v1':
    dir    => "${boxen::config::srcdir}/github/abigimportant/filmstacks-v1",
    mysql  => true,
    redis  => true,
    source => 'abigimportant/filmstacks-v1'
  }
}
