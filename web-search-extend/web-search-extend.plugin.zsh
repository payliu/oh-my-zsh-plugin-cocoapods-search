# web_search from terminal
# this custom plugin will extend the defaut web-search.plugin.zsh
# you still can use 'google'
# 

function web_search() {

  # get the open command
  local open_cmd
  if [[ $(uname -s) == 'Darwin' ]]; then
    open_cmd='open'
  else
    open_cmd='xdg-open'
  fi

  # check whether the search engine is supported
  if [[ ! $1 =~ '(google|bing|yahoo|cocoapods|rubygems)' ]]; then
    echo "Search engine $1 not supported."
    return 1
  fi

  local url

  if [[ $1 =~ '(cocoapods|rubygems)' ]]; then
    url="http://www.$1.org"
  else 
    url="http://www.$1.com"
  fi

  # no keyword provided, simply open the search engine homepage
  if [[ $# -le 1 ]]; then
    $open_cmd "$url"
    return
  fi

  # define search path
  if [[ $1 =~ '(google|bing|yahoo)' ]]; then
    
    url="${url}/search?q="

  elif [[ $1 =~ '(cocoapods)' ]]; then

    url="${url}/?q="

  elif [[ $1 =~ '(rubygems)' ]]; then

    url="${url}/search?query="

  fi

  shift   # shift out $1

  while [[ $# -gt 0 ]]; do
    url="${url}$1+"
    shift
  done

  url="${url%?}" # remove the last '+'

  $open_cmd "$url"
}

alias podweb='web_search cocoapods'
alias gemweb='web_search rubygems'
