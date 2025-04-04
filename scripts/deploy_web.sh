#!/bin/bash
set -eo pipefail

if [[ -n "$SITE_URL" ]]; then
    echo "site_url: $SITE_URL" >> mkdocs.yml
    KIND_CLUSTER="k0rdent"
fi
VERSION="v0.1.0" mike deploy v0.1.0
VERSION="v0.2.0" mike deploy v0.2.0 latest stable --update-aliases
mike set-default v0.2.0
git push origin gh-pages -f
