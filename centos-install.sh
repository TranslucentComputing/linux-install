echo "========TC-INC CentOS Bootup=============="

echo "======================"
echo "install DOCKER... yo!!!"
echo "======================"
sudo curl -fsSL https://raw.githubusercontent.com/TranslucentComputing/docker-install/master/main-centos.sh | bash

echo "======================"
echo "install GIT... yo!!!"
echo "======================"
sudo yum install git -y


echo "======================"
echo "install gcloud... yo!!!"
echo "======================"
sudo curl https://sdk.cloud.google.com | bash


echo "======================"
echo "install ahoy!!!"
echo "======================"
yum install wget -y
sudo wget -q https://github.com/devinci-code/ahoy/releases/download/1.1.0/ahoy-`uname -s`-amd64 -O /usr/local/bin/ahoy && sudo chown $USER /usr/local/bin/ahoy && chmod +x /usr/local/bin/ahoy


echo "======================"
echo "Server is up and ready"
echo "======================"