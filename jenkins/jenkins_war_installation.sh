cd /mnt

yum install tomcat-native.x86_64 -y
amazon-linux-extras install java-openjdk11 -y

mkdir tools
cd tools
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.78/bin/apache-tomcat-9.0.78.zip
unzip apache*tomcat*.zip

cd apache-tomcat-9.*/
cd webapps
wget https://get.jenkins.io/war-stable/2.375.1/jenkins.war

cd ../bin
chmod +x *.sh

## start jenkins or not ##
read  -p "Start Jenkins? (yes/no) " answer

if [ "$answer" == "yes" ]
then
        bash "startup.sh"
        sleep 3
        echo "Started Jenkins successfully."
else
        echo "Start Jenkins manually later on."
fi
#
