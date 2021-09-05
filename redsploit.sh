metasploit(){
    curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
    chmod 755 msfinstall && \
    ./msfinstall
};

kalibrew(){
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&
    git clone https://github.com/tjgeirk/kalibrew && bash kalibrew/kalibrew.sh
};

byob(){
    git clone https://github.com/malwaredllc/byob &&
    cd byob/web-gui && sh startup.sh
};

metasploit; kalibrew; byob;
