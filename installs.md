 ------git ,maven, jdk install --------

 sudo apt update
 sudo apt install git

sudo apt install maven
sudo apt update
sudo apt install openjdk-17-jdk

-----------------------------------------

-------------jenkins install ------------

sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins


-----------------------------------------
 
