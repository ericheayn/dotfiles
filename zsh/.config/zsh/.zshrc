source "$ZDOTDIR/env.zsh"
source "$ZDOTDIR/options.zsh"
source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/functions.zsh"
source "$ZDOTDIR/prompt.zsh"
source "$ZDOTDIR/completions.zsh"

for file in "$ZDOTDIR/languages"/*.zsh; do
    source "$file"
done

