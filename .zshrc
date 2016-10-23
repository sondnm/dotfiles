# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Editor
export VISUAL=nvim
export EDITOR=$VISUAL

if command -v rbenv >/dev/null; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init - --no-rehash)"
fi

for file in ~/.config/zsh/**/*.zsh
do
  [[ -f $file ]] && source $file
done

[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
