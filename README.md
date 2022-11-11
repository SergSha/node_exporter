<h4>node_exporter</h4>

<p>Install git</p>
<pre>yum -y install git</pre>

<p>Connect to GitHub repo for download to host</p>
<pre>git clone https://github.com/SergSha/node_exporter.git</pre>

<p>==================For to upload to GitHub==================</p>
<p>Make pair keys</p>
<pre>ssh-keygen
Enter
Enter
Enter</pre>

<p>Copy text of pub key and paste into GitHub:</p>
<pre>cat /root/.ssh/id_rsa.pub</pre>
<pre>https://github.com/settings/keys</pre>

<p>Connect to GitHub repo (node_exporter)</p>
<pre>git clone git@github.com:SergSha/node_exporter.git</pre>
<p>====================================================</p>

<p>Make the file node_exporter_inst.sh execute</p>
<pre>chmod u+x /root/node_exporter/node_exporter_inst.sh</pre>

<p>Start node_exporter_inst.sh</p>
<pre>/root/node_exporter/node_exporter_inst.sh</pre>
