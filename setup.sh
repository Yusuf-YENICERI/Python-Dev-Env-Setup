
echo "updating packages"
sudo apt-get update

echo "installing python"
sudo apt-get install python3
sudo apt-get install python3-pip

echo "installing virtualenv"
pip3 install virtualenv

echo "installing wget"
sudo apt-get install wget

echo "installing vscode"

echo "please type which one do you need? x64, arm32 or arm64 (default=x64)"
read architecture

url=""
if [[ $architecture == "x64" ]]; then
url="https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
elif [[ $architecture == "arm32" ]]; then
url="https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-armhf"
else
url="https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-arm64"
fi

wget -O code.deb $url
sudo apt-get install ./code.deb
