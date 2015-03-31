for file in ~/.{aliases,bash_prompt,git-completion}; do
    echo $file
    [ -r "$file" ] && source "$file"
done

unset file

# http://stackoverflow.com/questions/342969/how-do-i-get-bash-completion-to-work-with-aliases
__git_complete gco _git_checkout
__git_complete gbd _git_branch

# Case-insensitive globbing (used in pathname expansion) when using `*`
shopt -s nocaseglob

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# http://superuser.com/questions/90196/case-insensitive-tab-completion-in-bash
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

# below added to bash_profile automatically by apps

export PATH="/usr/local/bin:$PATH"

eval "$(rbenv init -)"

export NVM_DIR="/Users/josh/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm