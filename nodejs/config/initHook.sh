#!/bin/sh
# restore packages if configured in subdirs
find . -maxdepth "${NPM_SEARCH_DEPTH:-2}" -name package.json -exec npm install --prefix "$(dirname {})" \;
