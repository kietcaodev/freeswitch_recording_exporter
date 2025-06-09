Install metrics monitor for Freeswitch exporter recording on Debian 12

sudo apt install python3-venv

python3 -m venv /usr/lib/python3.11/venv

source /usr/lib/python3.11/venv/bin/activate

########### SIPREC ###########

cd /tmp

git clone https://github.com/kietcaodev/freeswitch_recording_exporter.git freeswitch_recording_exporter

cd /tmp/freeswitch_recording_exporter

sh install.sh

########### PHONE REC ###########

cd /tmp

git clone https://github.com/kietcaodev/freeswitch_recording_exporter.git freeswitch_recording_exporter

cd /tmp/freeswitch_recording_exporter

sh install_phonerec.sh
