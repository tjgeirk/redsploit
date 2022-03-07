#!/bin/bash
#
if [ brew ]; then
    alias apt="brew"
else
    curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh && \
    alias apt="brew"
fi
apt update;
apt upgrade;
apt autoremove;
apt install git curl ruby rbenv python3-pip python3-venv;
git clone https://github.com/malwaredllc/byob;
git clone https://github.com/htr-tech/nexphisher;
git clone https://github.com/beefproject/beef

curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > \
msfinstall && chmod 755 msfinstall && ./msfinstall
list=( \
    "aircrack-ng" \
    "amap" \
    "apktool" \
    "arp-scan" \
    "binwalk" \
    "capstone" \
    "sphinxbase" \
    "cowpatty" \
    "crunch" \
    "dc3dd" \
    "ddrescue" \
    "dex2jar" \
    "dns2tcp" \
    "dnsmap" \
    "dnstracer" \
    "dos2unix" \
    "ettercap" \
    "fcrackzip" \
    "foremost" \
    "fragroute" \
    "hping" \
    "httptunnel" \
    "hydra" \
    "john-the-ripper" \
    "libbtbb" \
    "libewf" \
    "libfreefare" \
    "libmicrohttpd" \
    "libnfc" \
    "lynis" \
    "AssetCacheManagerUtil" \
    "mfcuk" \
    "mitmproxy" \
    "metasploit" \
    "msgpack" \
    "ncrack" \
    "netcat" \
    "nikto" \
    "nmap" \
    "p0f" \
    "pixz" \
    "proxychains-ng" \
    "pwnat" \
    "qemu" \
    "reaver" \
    "rtl-sdr" \
    "rtpbreak" \
    "sipp" \
    "skipfish" \
    "sleuthkit" \
    "slowhttptest" \
    "smali" \
    "sqlmap" \
    "ssdeep" \
    "sslscan" \
    "thc-pptp-bruter" \
    "theharvester" \
    "tor" \
    "torsocks" \
    "truecrack" \
    "utm" \
    "valgrind" \
    "volatility" \
    "wine" \
    "winexe" \
    "wireguard-tools" \
    "wireshark" \
    "yara" \
)
for item in "${list[@]}" do;
    apt install $item
done
