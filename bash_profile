# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{aliases,bash_prompt}; do
    echo $file
    [ -r "$file" ] && source "$file"
done
unset file

export PATH="/usr/local/bin:$PATH"

eval "$(rbenv init -)"

export NVM_DIR="/Users/josh/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm