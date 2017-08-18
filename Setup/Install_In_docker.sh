## 
# On docker host centos7, run ubuntu images:
# docker run -it --privileged -v /var/run/docker.sock:/var/run/docker.sock -v /lib64/libsystemd-journal.so.0:/usr/lib/libsystemd-journal.so.0 -v /lib64/libsystemd-id128.so.0:/usr/lib/libsystemd-id128.so.0 -v /lib64/libdevmapper.so.1.02:/usr/lib/libdevmapper.so.1.02 -v /lib64/libgcrypt.so.11:/usr/lib/libgcrypt.so.11  -v /lib64/libgpgme.so.11:/usr/lib/libgpgme.so.11 -v /lib64/libdw.so.1:/usr/lib/libdw.so.1  -v /lib64/libassuan.so.0:/usr/lib/libassuan.so.0  -v /etc/sysconfig:/etc/sysconfig -v /usr/bin/docker-current:/usr/bin/docker-current -v /usr/bin/docker:/usr/bin/docker  -v /opt/servers/compilebox/compilebox:/opt/compliebox registry-ans.chaoxing.com/third-party/ubuntu-busybox:v3 /bin/bash
##

###########################
# NodeJS setup
###########################
apt-get update
apt-get install -y nodejs
apt-get install -y npm
echo "NodeJS setup Complete"

###########################
# Start Docker
###########################
chmod 777 ../API/DockerTimeout.sh
chmod 777 ../API/Payload/script.sh
chmod 777 ../API/Payload/javaRunner.sh
chmod 777 UpdateDocker.sh

systemctl restart docker
./UpdateDocker.sh
