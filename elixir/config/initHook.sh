#!/bin/sh
# ensure mix has hex ready
mix local.hex --force --if-missing

# restore project packages automatically
if [ -f ./mix.exs ]; then
  mix deps.get
fi
