#!/bin/bash
set -ex
[ -d __sapper__/export/money/.git ] && mv __sapper__/export/{money/,}.git
NODE_ENV=production npm run export
cd __sapper__/export/money/
mv ../.git ./
git add .
git commit -m update
git push -u origin gh-pages
