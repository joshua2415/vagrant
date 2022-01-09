  echo 'start install.sh'
  sed -i s#archive\.ubuntu\.com#mirror.kakao.com#g /etc/apt/sources.list
  #rm -rf /var/lib/apt/lists/*
  #apt-get update -o Acquire::CompressionTypes::Order::=gz
  #apt-get -y update
  #apt-get -y upgrade
  #apt-get -y install git
  apt upgrade & apt update
  apt-get -y install zsh
  apt-get -y install powerline fonts-powerline
  echo 'end install.sh'