#!/bin/sh
if [ ! -f UUID ]; then
  UUID="5c8d60ed-107c-4283-851b-efae05007b56"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

