#!/bin/bash

echo "
╦╔╗╔╔═╗╔╦╗╔═╗╦  ╦    ╔╦╗╔═╗╔╦╗╦ ╦╦  ╔═╗
║║║║╚═╗ ║ ╠═╣║  ║    ║║║║ ║ ║║║ ║║  ║╣ 
╩╝╚╝╚═╝ ╩ ╩ ╩╩═╝╩═╝  ╩ ╩╚═╝═╩╝╚═╝╩═╝╚═╝
"
apt-get install python
apt-get install python3
apt-get install perl
pip install -r BlackWidow/requirements.txt
pip2 install -r BlackWidow/requirements.txt
pip3 install -r BlackWidow/requirements.txt
pip install -r exploit3r/requirements.txt
pip2 install -r exploit3r/requirements.txt
pip3 install -r exploit3r/requirements.txt
pip install -r Infoga/requirements.txt
pip2 install -r Infoga/requirements.txt
pip3 install -r Infoga/requirements.txt
pip install -r WPSeku/requirements.txt
pip2 install -r WPSeku/requirements.txt
pip3 install -r WPSeku/requirements.txt
apt-get install libmoose-perl
cpan -i Moose
cpan -i threads
cpan -i threads::shared
cpan -i Thread::Queue
cpan -i HTTP::Response
cpan -i HTTP::Request
cpan -i LWP::UserAgent
cpan -i Net::SSLeay
cpan -i Getopt::Std 
cpan -i MIME::Base64
cpan -i YAML
pip install -r WPSeku/requirements.txt
chmod +x BlackWidow/blackwidow
