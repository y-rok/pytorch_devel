apt-get update
apt-get install net-tools vim openssh-server tmux -y
sed -i -e '/PermitRootLogin/d' /etc/ssh/sshd_config
sed -i -e '$ a PermitRootLogin yes' /etc/ssh/sshd_config
passwd root
service ssh restart
pip install jupyterlab
nohup jupyter-lab --port 9010 --ip 0.0.0.0 --allow-root > jupyter.out &
