# dotfiles

### how to install

Run `./install.sh` after cloning this repo into your user directory. The script will
copy existing dotfiles into a backup directory, and then create symlinks to the new
dotfiles that reside in the cloned repo directory.

After installing, don't forget to reload your `.bash_profile`:

```
source ~/.bash_profile
```

### git config

Set the following in global `.gitconfig` to avoid needing to use `-u` when pushing
new upstream branch:

```
[push]
    default = simple
```

Set the following to use Sublime Text as the default editor for git:

```
[core]
	editor = subl -w
```

### resources

- http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
