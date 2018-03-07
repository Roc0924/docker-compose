
# install golang
sudo su -

wget https://www.golangtc.com/static/go/1.9.2/go1.9.2.linux-amd64.tar.gz

tar -C /usr/local -xzf go1.9.2.linux-amd64.tar.gz
echo 'export GOROOT=/usr/local/go' >> /etc/profile
echo 'export PATH=$PATH:$GOROOT/bin' >> /etc/profile
echo 'export GOPATH=/opt/gopath' >> /etc/profile


# install docker 

yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine

yum install -y yum-utils \
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

# yum list docker-ce --showduplicates | sort -r