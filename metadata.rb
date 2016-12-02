name             'x2go'
maintainer       'Rilindo Foster'
maintainer_email 'rilindo.foster@monzell.com'
license          'Apache 2.0'
description      'Installs/Configures x2go'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

{'centos' => '6.0', 'rhel' => '6.0', 'debian' => '8.0'}.each do |os,ver|
  supports os, ">= #{ver}"
  case os
    when 'centos', 'rhel'
      depends 'yum'
    when 'debian'
      depends 'apt'
  end
end
depends          'yum'
depends          'apt'
