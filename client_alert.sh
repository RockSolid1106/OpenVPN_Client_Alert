token="" # ----> Enter your Telegram Bot token here.
chatid="" # ----> Enter your Telegram Chat ID here. Remember to include the '-' sign.
echo "Script Started"
sent="true" # ----> This variable will store a value of True or False, depending on whether the message was previously sent. This helps preventing spamming of duplicate messages.
while(true)
do
log=$(sed -n '/Common Name,Real Address,Bytes Received,Bytes Sent,Connected Since/, /ROUTING TABLE/{ /Common Name,Real Address,Bytes Received,Bytes Sent,Connected Since/! {/ROUTING TABLE/! p } }' /var/log/openvpn/status.log)
oldlog=$log
if [ -z "${log}" ] || [ "$oldlog" != "$log" ] # if variable log is empty or if value changes.
then
sent="true"
else
if [ "$sent" == "true" ]
then
log=`echo "$log" | sed "s/ /+/g"` # This will encode the text as a url. Essentially, will replace a blankspace with a '+'.

curl https://api.telegram.org/$token/sendMessage?chat_id=$chatid'&'text=Client%28s%29+connected:%0A$log > /dev/null
echo "A TG Message was sent."
sent="false"
fi
fi
sleep 10
done
