#!/bin/sh

TOKEN="3601aeb39a46d5018c59a4babd2a44f80b151c5b"
CITY="Kyiv"

API="https://api.waqi.info/feed"

if [ -n "$CITY" ]; then
    aqi=$(curl -sf "$API/$CITY/?token=$TOKEN")
else
    location=$(curl -sf https://location.services.mozilla.com/v1/geolocate?key=geoclue)

    if [ -n "$location" ]; then
        location_lat="$(echo "$location" | jq '.location.lat')"
        location_lon="$(echo "$location" | jq '.location.lng')"

        aqi=$(curl -sf "$API/geo:$location_lat;$location_lon/?token=$TOKEN")
    fi
fi

if [ -n "$aqi" ]; then
    if [ "$(echo "$aqi" | jq -r '.status')" = "ok" ]; then
        aqi=$(echo "$aqi" | jq '.data.aqi')

        if [ "$aqi" -lt 50 ]; then
            echo "%{F#689d6a}%{F-} $aqi"
        elif [ "$aqi" -lt 100 ]; then
            echo "%{F#b8bb26}%{F-} $aqi"
        elif [ "$aqi" -lt 150 ]; then
            echo "%{F#fabd2f}%{F-} $aqi"
        elif [ "$aqi" -lt 200 ]; then
            echo "%{F#fe8019}%{F-} $aqi"
        elif [ "$aqi" -lt 300 ]; then
            echo "%{F#fb4934}%{F-} $aqi"
        else
            echo "%{F#cc241d}%{F-} $aqi"
        fi
    else
        echo "$aqi" | jq -r '.data'
    fi
fi
