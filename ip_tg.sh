#!/bin/bash

bot_token=1336436573:AAFpaGsPLEc90A9LBObk6kSXDvjrySmQH14        #Get token from Telegra        >
send_message_to=571213272               #Give telegram id/group id where message will b

myip=$(curl -s http://ipecho.net/plain; echo)
curl -s -X POST https://api.telegram.org/bot$bot_token/sendMessage -d chat_id=$send_message_to -d text="ssh k@$myip" -o /dev/null
