# node_exporter

Install git
<pre>yum -y install git</pre>

Connect to GitHub repo for download to host
<pre>git clone https://github.com/SergSha/node_exporter.git</pre>

#------- For to upload to GitHub -------
Make pair keys
<pre>ssh-keygen
Enter
Enter
Enter</pre>

Copy text of pub key and paste into GitHub:
<pre>cat /root/.ssh/id_rsa.pub</pre>
<pre>https://github.com/settings/keys</pre>

Connect to GitHub repo (node_exporter)
<pre>git clone git@github.com:SergSha/node_exporter.git</pre>
#---------------------------------------

Make the file node_exporter_inst.sh execute
<pre>chmod u+x /root/node_exporter/node_exporter_inst.sh</pre>

Start node_exporter_inst.sh
<pre>/root/node_exporter/node_exporter_inst.sh</pre>
