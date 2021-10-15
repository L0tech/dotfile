#!/usr/bin/env bash

# -----------------------------------------------------------------------------
# Info:
#   author:    Miroslav Vidovic
#   file:      web-search.sh
#   created:   24.02.2017.-08:59:54
#   revision:  ---
#   version:   1.0
# -----------------------------------------------------------------------------
# Requirements:
#   rofi
# Description:
#   Use rofi to search the web.
# Usage:
#   web-search.sh
# -----------------------------------------------------------------------------
# Script:

declare -A URLS

URLS=(
  ["google"]="https://www.google.com/search?q="
 # ["bing"]="https://www.bing.com/search?q="
 # ["yahoo"]="https://search.yahoo.com/search?p="
  ["duckduckgo"]="https://www.duckduckgo.com/?q="
  ["yandex"]="https://yandex.ru/yandsearch?text="
  ["github"]="https://github.com/search?q="
  ["rezka"]="https://rezka.ag/search/?do=search&subaction=search&q=%s"
 # ["goodreads"]="https://www.goodreads.com/search?q="
  ["stackoverflow"]="http://stackoverflow.com/search?q="
 # ["symbolhound"]="http://symbolhound.com/?q="
 # ["searchcode"]="https://searchcode.com/?q="
 # ["openhub"]="https://www.openhub.net/p?ref=homepage&query="
 # ["superuser"]="http://superuser.com/search?q="
 # ["askubuntu"]="http://askubuntu.com/search?q="
 # ["imdb"]="http://www.imdb.com/find?ref_=nv_sr_fn&q="
 # ["rottentomatoes"]="https://www.rottentomatoes.com/search/?search="
 # ["piratebay"]="https://thepiratebay.org/search/"
  ["youtube"]="https://www.youtube.com/results?search_query="
 # ["vimawesome"]="http://vimawesome.com/?q="
  ["flibusta"]="http://flibusta.site/booksearch?ask=%"
  ["shikimori"]="https://shikimori.one/animes?search="
  ["wikipedia"]="https://ru.wikipedia.org/w/index.php?search="
  ["lukomore"]="https://lurkmore.to/index.php?title=%D0%A1%D0%BB%D1%83%D0%B6%D0%B5%D0%B1%D0%BD%D0%B0%D1%8F%3ASearch&search="
  ["torrentseeker"]="https://torrentseeker.com/search.php?q="
  ["zooqle"]="https://zooqle.com/search?q="
)

# List for rofi
gen_list() {
    for i in "${!URLS[@]}"
    do
      echo "$i"
    done
}

main() {
  # Pass the list to rofi
  platform=$( (gen_list) | rofi -dmenu -matching fuzzy -no-custom -location 0 -p "Search" )

  if [[ -n "$platform" ]]; then
    query=$( (echo ) | rofi  -dmenu -matching fuzzy -location 0 -p "Query " )

    if [[ -n "$query" ]]; then
      url=${URLS[$platform]}$query
      xdg-open "$url"
    else
      exit
    fi

  else
    exit
  fi
}

main

exit 0
