#!/bin/sh
# ensure mix is ready with phoenix commands
if ! mix archive | grep -q "\bphx_new-[1-9]"; then
	mix archive.install hex phx_new --force
fi

# ensure postgres is initialised
if [ ! -f "$PGDATA/PG_VERSION" ]; then
	initdb -U postgres
fi
