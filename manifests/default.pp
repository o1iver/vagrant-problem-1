exec { "apt-get update":
    path => "/usr/bin",
}
package { "vim":
    ensure => present,
    require => Exec["apt-get update"],
}
package { "tree":
    ensure => present,
    require => Exec["apt-get update"],
}
