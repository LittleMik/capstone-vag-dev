mkdir -p /etc/puppet/modules
(puppet module list | grep puppetlabs-apache) ||
   puppet module install puppetlabs/apache