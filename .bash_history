sudo yum -y update
sudo amazon-linux-extras install java-openjdk11
sudo tee /etc/yum.repos.d/jenkins.repo<<EOF
[jenkins]
name=Jenkins
baseurl=http://pkg.jenkins.io/redhat
gpgcheck=0
EOF

sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins
start jenkins
systemctl start jenkins
systemctl enable jenkins
systemctl status jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
