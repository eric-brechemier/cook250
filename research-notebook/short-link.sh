#!/bin/sh
# Register a short link for Cook 250 project on git.io
#
# Parameters:
#   $1 - page name, including the 'p##-' prefix
#   $2 - optional, short code, without the 'cook250:' prefix,
#        defaults to the page name without the 'p##-' prefix
#
pageName="$1"
shortCode="${2:-${1#*-}}"

if test -z "$pageName"
then
  echo "Usage: $0 pageName [shortCode]" 2>&1
  exit 1
fi

echo "Create short link https://git.io/cook250:$shortCode for page $pageName"
printf 'in 5... ' && sleep 1
printf '4... ' && sleep 1
printf '3... ' && sleep 1
printf '2... ' && sleep 1
echo '1...' && sleep 1

curl -i https://git.io \
  -F "url=https://github.com/eric-brechemier/cook250/tree/master/research-notebook/$pageName" \
  -F "code=cook250:$shortCode"

echo "Done."
