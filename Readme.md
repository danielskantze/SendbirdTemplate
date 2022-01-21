# Getting started

1. Create a new group channel in the admin interface of Sendbird
2. `bash bin/list-group-channels.sh APP_ID API_TOKEN` to get channel_url and check is_public field
3. `bash bin/update-group-channel.sh APP_ID API_TOKEN CHANNEL_URL true` to set channel to become public. Command should produce json output of channel data. Verify that it is set to public. 
4. Run app (`npm run android`)
5. In the lobby, verify that the channel (with the name you gave it) is listed. Try refresh if it is not. 
6. Press the channel
7. Try write something in the chat. Make sure it works. 