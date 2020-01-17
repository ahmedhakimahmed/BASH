#!/bin/bash
#set -xv

############################################################
# A Seperate IP list need to be define in a speperate file
# ip_address_list.txt
# dt0q10k01 4.4.4.1
# dt0q10k02 5.5.5.1
# dt0e9214  6.6.6.1
# dt0e9215  7.7.7.1
# dt0acx01  3.3.3.1
#
############################################################

declare -i i="1"
#ip_list=ip_address_list.txt

function pingcheck
{
for IPADD in `awk '{print $2}' ip_address_list.txt`
do
echo "    Send ICMP PKTS to >>>>" $(awk 'NR=='$i'{print $1}' ip_address_list.txt)  "With IP_Address" $IPADD
{
        ping -c 1 -w 2 $IPADD > /home/aahmed/bash/junk
        if [ $? -eq 0 ]
        then
            echo "HOST IS UP"
#            exit 0
        else
            echo "HOST IS DOWN"
#            exit 1
        fi
}
i=i+1
done
}
pingcheck

