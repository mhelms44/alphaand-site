#!/bin/zsh
# Pulls changes from alphaand-site github repo, builds production app
# Cleans site directory
# Deploys dist folder for web app into site directory
# Obviously `rm -rf` is a bold move in a script, but I like to live life on the edge
# Which is also why my prod server runs Arch btw

cd /home/michael/staging/alphaand-site
git pull
cd alphaa-site/
npm run build >&1
rm -rf /home/michael/site/img
rm -rf /home/michael/site/css
rm -rf /home/michael/site/js
cd dist
mv * ~/site/

printf "alphaandromeda.com is now updated and ready for hordes of traffic!\n"
printf "jk, we all know nobody is gonna look at it :'(\n"