#!/bin/bash
#
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > \
msfinstall && chmod 755 msfinstall && ./msfinstall
git clone https://github.com/malwaredllc/byob
git clone https://github.com/htr-tech/nexphisher
git clone https://github.com/beefproject/beef
git clone https://github.com/gkbrk/slowloris
wget https://xsser.03c8.net/xsser/xsser_1.8.3_all.deb
sudo dpkg -i xsser_1.8.3_all.deb git clone https://github.com/fwaeytens/dnsenum
git clone https://github.com/nmap/nmap
git clone https://github.com/t0thkr1s/revshellgen
git clone https://github.com/IvanGlinkin/Fast-Google-Dorks-Scan
git clone https://github.com/sqlmapproject/sqlmap
git clone https://github.com/Ettercap/ettercap
git clone https://github.com/bettercap/bettercap
git clone https://github.com/hak5/sharkjack-payloads
git clone https://github.com/hak5/bashbunny-payloads
git clone https://github.com/hak5/usbrubberducky-payloads
