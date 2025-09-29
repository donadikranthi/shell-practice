
#!/bin/bash
TO_ADDRESS=$1
SUBJECT=$2
ALERT_TYPE=$3
MESSAGE_BODY=$4
IP_ADDRESS=$5
TO_TEAM="$6"



FINAL_BODY=$(sed -e "s/TO_TEAM/$TO_TEAM/g" -e "s/ALERT_TYPE/$ALERT_TYPE/g" -e "s/IP_ADDRESS/$IP_ADDRESS/g" -e "s/MESSAGE/$FORMATTED_BODY/g" template.html)

{
echo "To: donadikranthikumar@gmail.com"
echo "Subject: =Mail Alert from JoinDevops"
echo "Content-Type: text/html"
echo ""
echo "This is a test mail""
} | msmtp "donadikranthikumar@gmail.com"
