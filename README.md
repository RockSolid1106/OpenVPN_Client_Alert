# OpenVPN_Client_Alert
This is a very simple alerting system, which will send out a telegram message on a channel when there is a client connected. This involves a Telegram Bot. Steps to make one mentioned below.

This is my first time creating a Project on GitHub. I hope you guys keep that in mind, and help me if I dont know about certain parts of GitHub.

Lets start by the setup on Telegram. First, open Telegram(on the phone), and click on the search icon, and type in "BotFather" A result should appear, and should have a little verified star symbol beside it. Click on it, and send a message containing "/start". Then another message containing "/newbot". Then answer the questions that it asks. You should then receive a message that contains the token for your bot. You will need this. **DO NOT SHARE THIS TOKEN WITH ANYONE.** Then create a new channel(click on the menu icon on the top left, then "New Channel" and enter the appropriate information). Then add your bot to the channel(search by the '@xxxxx' name you had assigned to the bot). Only give the "Can send messages" permissions.
Now, open your browser, and navigate to the website:
```
https://api.telegram.org/bot<your token>/getUpdates
```
If you get a result like,
```
{"ok":true,"result":[]}
```
go to channel and send a message. This message can contain anything.
Then search for:
```
chat":{"id":-1001329888055
```
Make a note of the chat ID, or the numbers after the '-' sign. 

That's it for the Telegram part. Now lets move to the script.

#Getting the Script

Start off by getting the script, and applying appropriate permissions:
```
curl -O https://gist.githubusercontent.com/RockSolid1106/086717e5de583d6054971c0b0b836386/raw/6fb2722983161ff7077e6f450a85bcc40bb9685f/client_alert.sh
```
```
chmod 700 client_alert.sh
```

Then, open the file:
```
nano client_alert.sh
```
Now, change the values of the variables "token" and "chatid" with the values you acquired earlier. Be sure to add the word 'bot' before your token, and the '-' sign before your chat ID.
![image](https://user-images.githubusercontent.com/84492239/120105233-b069f300-c175-11eb-8e63-524e2c2cfd0c.png)

And that's it! Go into the terminal and run the script by typing:
```
sudo ./client_alert.sh


