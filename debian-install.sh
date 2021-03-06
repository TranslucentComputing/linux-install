echo "========TC-INC Debian OS Bootup=============="

echo "Update packages"
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates


echo "===================================="
echo "install DOCKER... yo!!!"
echo "===================================="
sudo curl -fsSL https://raw.githubusercontent.com/TranslucentComputing/docker-install/master/main-debian.sh | bash

echo "===================================="
echo "install GIT... yo!!!"
echo "===================================="
sudo apt-get install git -y

echo "===================================="
echo "install gcloud... yo!!!"
echo "===================================="
sudo apt install -y wget unzip python openssh-client python-openssl
sudo wget https://dl.google.com/dl/cloudsdk/channels/rapid/google-cloud-sdk.zip && unzip google-cloud-sdk.zip && rm google-cloud-sdk.zip
sudo google-cloud-sdk/install.sh --usage-reporting=false --path-update=true --bash-completion=true --rc-path=$HOME/.bashrc
# Disable updater check for the whole installation.
# Users won't be bugged with notifications to update to the latest version of gcloud.
sudo google-cloud-sdk/bin/gcloud config set --installation component_manager/disable_update_check true


echo "===================================="
echo "install ahoy!!!"
echo "===================================="
sudo wget -q https://github.com/devinci-code/ahoy/releases/download/1.1.0/ahoy-`uname -s`-amd64 -O /usr/local/bin/ahoy && sudo chown $USER /usr/local/bin/ahoy && chmod +x /usr/local/bin/ahoy

echo "===================================="
echo "Server is up and ready"
echo "===================================="