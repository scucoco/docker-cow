#!/bin/sh
cowConfFile="~/.cow/rc"

if [ ! -f "$cowConfFile" ]; then
	echo listen = http://$LISTEN_IP:$LISTEN_PORT >> ~/.cow/rc
	echo listen = http://$LISTEN_IP:$LISTEN_PORT >> /cowconfig/rc
	echo proxy = ss://$SS_ENCRYPT_METHOD:$SS_PASSWORD@$SS_SERVER_IP:$SS_SERVER_PORT >> ~/.cow/rc
	echo proxy = ss://$SS_ENCRYPT_METHOD:$SS_PASSWORD@$SS_SERVER_IP:$SS_SERVER_PORT >> /cowconfig/rc
	echo userPasswd = $USER:$PASSWORD >> ~/.cow/rc
	echo userPasswd = $USER:$PASSWORD >> /cowconfig/rc
fi
./cow
/bin/bash
