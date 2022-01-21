# Update a group channel

APP_ID=$1
API_TOKEN=$2
CHANNEL_URL=$3 # Called URL because of Sendbird's documentation. Bear in mind that the strings do not look like URLs though
IS_PUBLIC=$4 # true | false

ENDPOINT="https://api-${APP_ID}.sendbird.com/v3/group_channels/${CHANNEL_URL}"

if ! command -v jq &> /dev/null
then
    curl -X PUT "${ENDPOINT}" --header "Api-Token: ${API_TOKEN}" -d "{\"is_public\":\"${IS_PUBLIC}\"}"
else
    curl -X PUT "${ENDPOINT}" --header "Api-Token: ${API_TOKEN}" -d "{\"is_public\":\"${IS_PUBLIC}\"}" | jq
fi

# enable public access:
# bash bin/update-group-channel.sh XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx sendbird_group_channel_xxxxxxxxx_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx true

# disable public access:
# bash bin/update-group-channel.sh XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx sendbird_group_channel_xxxxxxxxx_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx false
