pushd /home/vagrant/osbuild-composer
dnf builddep golang-github-osbuild-composer.spec -y
make rpm
dnf install rpmbuild/RPMS/x86_64/* -y
dnf install cockpit-composer -y
systemctl enable --now osbuild-composer.socket
systemctl enable --now cockpit.socket
popd
