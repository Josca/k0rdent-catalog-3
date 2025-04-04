#!/bin/bash
set -euo pipefail

VERSION="v0.1.0" mike deploy v0.1.0
VERSION="v0.2.0" mike deploy v0.2.0 latest stable --update-aliases
mike set-default v0.2.0
git push origin gh-pages -f
