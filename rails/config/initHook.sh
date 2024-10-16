#!/bin/sh
# ensure rails gem is installed
gem install rails ${RAILS_GEM_INSTALL_FLAGS}

# restore project packages/other deps automatically
if [ -x ./bin/setup ]; then
	# use project setup script when present
	./bin/setup --skip-server
elif [ -f ./Gemfile ]; then
	# use bundle install when only a Gemfile is found
	bundle install
fi

# add bin to PATH if present
if [ -d ./bin ]; then
	export PATH="${PWD}/bin:${PATH}"
fi
