#!/bin/bash
###############################################################
#File Name      :   setup.sh
#Arthor         :   kylin
#Created Time   :   Sat 19 Sep 2015 04:04:15 AM CST
#Email          :   kylinlingh@foxmail.com
#Blog           :   http://www.cnblogs.com/kylinlin/
#Github         :   https://github.com/Kylinlin
#Version        :   1.0
#Description    :   Install mysql through network.
###############################################################
 
 
function Setup {
    yum install git dos2unix -y > /dev/null
    git clone https://github.com/Kylinlin/mysql.git
    cd mysql/scripts/
	dos2unix *
    sh install_mysql.sh
    if [[ ! -d /server ]]; then
        mkdir /server
    fi  
    cp -f backup_mysql.sh /server/
}
 
Setup
