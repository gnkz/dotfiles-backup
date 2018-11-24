function fish_mode_prompt; end
fish_vi_key_bindings

set -U EDITOR nvim

if [ "$TMUX" = "" ]
    tmux new -A -s hack; exit;
end

set -gx GOPATH ~/go
set -gx PATH ~/.local/bin $GOPATH/bin $PATH
set -gx SSH_AUTH_SOCK (gnome-keyring-daemon --start | grep "^SSH_AUTH_SOCK" | awk -F "=" '{print $2}')

alias git="hub"
alias vim="nvim"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/gsanchez/.nvm/versions/node/v9.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /home/gsanchez/.nvm/versions/node/v9.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/gsanchez/.nvm/versions/node/v9.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /home/gsanchez/.nvm/versions/node/v9.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish
