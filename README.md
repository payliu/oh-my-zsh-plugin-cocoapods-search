oh-my-zsh-plugin-cocoapods-search
=================================

pod search from Web site: http://cocoapods.org


## Install

```sh
$ mkdir -p ~/.oh-my-zsh/custom/plugins/cocoapods-search
$ cd ~/.oh-my-zsh/custom/plugins/cocoapods-search
$ curl https://raw.github.com/payliu/oh-my-zsh-plugin-cocoapods-search/master/cocoapods-search/cocoapods-search.plugin.zsh > cocoapods-search.plugin.zsh 
```

## Configuration
In your `.zshrc`, add plugin `cocoapods-search` 

ex:
```sh
# .zshrc
plugins=(git sublime cocoapods-search)
```

## Use

Remember to restart shell

```sh
$ cocoapods AFNetwork
```
