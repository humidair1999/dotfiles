for file in ~/.{aliases,bash_prompt,bashrc,git-completion}; do
    echo $file
    [ -r "$file" ] && source "$file"
done

unset file

# http://stackoverflow.com/questions/342969/how-do-i-get-bash-completion-to-work-with-aliases
__git_complete gco _git_checkout
__git_complete gbd _git_branch
__git_complete gm _git_merge
__git_complete gr _git_rebase

# Match filenames in a case-insensitive fashion when performing
# filename expansion.
shopt -s nocaseglob

# Autocorrect typos in path names when using the `cd` command.
shopt -s cdspell

# Include filenames beginning with a "." in the filename expansion.
shopt -s dotglob

# Do not attempt to search the PATH for possible completions when
# completion is attempted on an empty line.
shopt -s no_empty_cmd_completion

# http://superuser.com/questions/90196/case-insensitive-tab-completion-in-bash
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

# below added automatically by apps
