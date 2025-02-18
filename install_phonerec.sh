cp /tmp/freeswitch_recording_exporter/freeswitch_phone_rec_exporter /usr/local/bin/freeswitch_phone_rec_exporter

cat << FLAG > /etc/systemd/system/freeswitch_phone_rec_exporter.service
[Unit]
Description=Node Exporter
After=network.target
[Service]
User=root
Group=root
Type=simple
ExecStart=/usr/lib/python3.11/venv/bin/python /usr/local/bin/freeswitch_phone_rec_exporter
[Install]
WantedBy=multi-user.target
FLAG
sudo systemctl daemon-reload 
sudo systemctl restart freeswitch_phone_rec_exporter
sudo systemctl enable freeswitch_phone_rec_exporter
sudo systemctl status freeswitch_phone_rec_exporter
