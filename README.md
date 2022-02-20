# node_exporter
# Install git
yum -y install git

# Connect to GitHub repo for download to host
git clone https://github.com/SergSha/node_exporter.git

#------- For to upload to GitHub -------------
# Make pair keys
#ssh-keygen #Enter-Enter-Enter
# Copy text of pub key and paste into GitHub:
cat /root/.ssh/id_rsa.pub
#https://github.com/settings/keys
# Connect to GitHub repo (node_exporter)
#git clone git@github.com:SergSha/node_exporter.git
------------------------------------------------

# Make the file inst_set.sh execute
chmod u+x /root/node_exporter/node_exporter_inst.sh

# Start node_exporter_inst.sh
/root/node_exporter/node_exporter_inst.sh
