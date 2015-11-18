#!/usr/bin/env bash
set -e # halt script on error

source "https://rubygems.org"
gem "jekyll"
gem "html-proofer"

bundle exec jekyll build
bundle exec htmlproof ./_site --disable-external --only-4xx --check-html --check-favicon

