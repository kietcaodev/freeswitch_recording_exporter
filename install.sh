sudo apt install python3-venv
python3 -m venv /usr/lib/python3.11/venv
source /usr/lib/python3.11/venv/bin/activate
pip install prometheus-client

cat << FLAG > /etc/systemd/system/freeswitch_recording_exporter.service
[Unit]
Description=Node Exporter
After=network.target
[Service]
User=root
Group=root
Type=simple
ExecStart=/usr/lib/python3.11/venv/bin/python /usr/local/bin/freeswitch_recording_exporter
[Install]
WantedBy=multi-user.target
FLAG
sudo systemctl daemon-reload 
sudo systemctl restart freeswitch_recording_exporter
sudo systemctl enable freeswitch_recording_exporter
sudo systemctl status freeswitch_recording_exporter
