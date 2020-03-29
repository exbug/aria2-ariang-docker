#! /bin/bash -eu

echo "Run aria2c and ariaNG"
if [ "$ENABLE_AUTH" = "true" ]; then
  echo "Using Basic Auth config file "
  export CADDY_FILE=/usr/local/caddy/SecureCaddyfile
else
  echo "Using caddy without Basic Auth"
  export CADDY_FILE=/usr/local/caddy/Caddyfile
fi

if [ "$NO_CADDY" = "true" ]; then
  echo "no caddy"
else
  /usr/local/bin/caddy -quic --conf ${CADDY_FILE}
fi  
