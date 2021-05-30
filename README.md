# OpenVPN Client Alert
This is a very simple alerting system, which will send out a Telegram message on a channel when there is a client connected. This involves a Telegram Bot. Steps to make one mentioned below.
![image](https://user-images.githubusercontent.com/84492239/120111280-f5e6ea00-c18e-11eb-8e38-643df5aab854.png)


This is my first time creating a Project on GitHub. I hope you guys keep that in mind, and help me if I dont know about certain parts of GitHub.

## The Telegram Part
Lets start by the setup on Telegram. First, open Telegram(on the phone), and click on the search icon, and type in "BotFather" A result should appear, and should have a little verified star symbol beside it. 
![image](https://user-images.githubusercontent.com/84492239/120110971-8fad9780-c18d-11eb-9b1b-28acc2d3d136.png)

Click on it, and send a message containing "/start". Then another message containing "/newbot". Then answer the questions that it asks. You should then receive a message that contains the token for your bot. You will need this. **DO NOT SHARE THIS TOKEN WITH ANYONE.** Then create a new channel(click on the menu icon on the top left, then "New Channel" and enter the appropriate information). Then add your bot to the channel(search by the '@xxxxx' name you had assigned to the bot). Only give the "Can send messages" permissions.
Now, open your browser, and navigate to the website:
```
https://api.telegram.org/bot<your token>/getUpdates
```
If you get a result like,
```
{"ok":true,"result":[]}
```
go to the channel(on Telegram) and send a message. This message can contain anything.
Then reload the page, and search for the following text on the website:
```
chat":{"id":-1001329888055
```
Make a note of the chat ID, or the numbers after the '-' sign. So, your Chat ID should look something like: -xxxxxxxxxxxxx.

That's it for the Telegram part. Now lets move to the script.

## Getting the Script

Start off by getting the script, and applying appropriate permissions:
```
curl -O https://raw.githubusercontent.com/RockSolid1106/OpenVPN_Client_Alert/master/client_alert.sh
```
```
chmod 700 client_alert.sh
```

Then, open the file:
```
nano client_alert.sh
```
Now, change the values of the variables "token" and "chatid" with the values you acquired earlier. Be sure to add the word 'bot' before your token, and the '-' sign before your chat ID.
![image](https://user-images.githubusercontent.com/84492239/120107543-042d0a00-c17f-11eb-8e9b-06ba09df3172.png)


And that's it! Go into the terminal and run the script by typing:
```
sudo bash client_alert.sh
```
The script will run itself every 10 seconds to check the log file, and will send a Telegram message if a client is connected.


As said, this is a very simple script. I hope to see many contributions to make this a good one.
