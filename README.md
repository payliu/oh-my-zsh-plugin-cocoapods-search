oh-my-zsh-plugin-web-search-extend
=================================

pod search from web site: http://cocoapods.org
ruby gem search from web site: http://rubygems.org

## Install

```sh
$ mkdir -p ~/.oh-my-zsh/custom/plugins/web-search-extend
$ cd ~/.oh-my-zsh/custom/plugins/web-search-extend
$ curl https://raw.github.com/payliu/oh-my-zsh-plugin-web-search-extend/master/web-search-extend/web-search-extend.plugin.zsh > web-search-extend.plugin.zsh 
```

## Configuration
In your `.zshrc`, add plugin `web-search-extend` 

ex:
```sh
# .zshrc
plugins=(git sublime web-search-extend)
```

## Use

Remember to restart shell

```sh
$ podweb AFNetwork
$ gemweb json
```
