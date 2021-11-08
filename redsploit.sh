#!/bin/bash
#
git clone https://github.com/malwaredllc/byob;

git clone https://github.com/htr-tech/nexphisher;

curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall

list=("aircrack-ng" "amap" "apktool" "arp-scan" "binwalk" "capstone" "sphinxbase" "cowpatty" "crunch" "dc3dd" "ddrescue" "dex2jar" "dns2tcp" "dnsmap" "dnstracer" "dos2unix" "ettercap" "fcrackzip" "foremost" "fragroute" "hping" "httptunnel" "hydra" "john-the-ripper" "libbtbb" "libewf" "libfreefare" "libmicrohttpd" "libnfc" "lynis" "AssetCacheManagerUtil" "mfcuk" "mitmproxy" "msgpack" "ncrack" "nikto" "nmap" "p0f" "pixz" "proxychains-ng" "pwnat" "qemu" "reaver" "rtl-sdr" "rtpbreak" "sipp" "skipfish" "sleuthkit" "slowhttptest" "smali" "sqlmap" "ssdeep" "sslscan" "thc-pptp-bruter" "theharvester" "truecrack" "valgrind" "volatility" "wine" "winexe" "wireshark" "yara")

if [ "$OSTYPE"=="darwin" ]; then
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh && \
  for item in "${list[@]}" do;
     brew install $item
  done
elif [ "$OSTYPE"=="gnu" ]; then
  for item in "${list[@]}" do;
     apt-get install $item
  done
else
  echo "error"; exit;
fi

