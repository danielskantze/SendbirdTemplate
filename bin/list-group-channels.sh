# List group channels

APP_ID=$1
API_TOKEN=$2

if ! command -v jq &> /dev/null
then
    curl "https://api-${APP_ID}.sendbird.com/v3/group_channels" --header "Api-Token: ${API_TOKEN}"
else
    curl "https://api-${APP_ID}.sendbird.com/v3/group_channels" --header "Api-Token: ${API_TOKEN}" | jq
fi

