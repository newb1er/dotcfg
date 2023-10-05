if status is-interactive
    # Commands to run in interactive sessions can go here

	# zoxide init
	zoxide init fish | source
end

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh" # load nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # load nvm bash_completion

bass source ~/.nvm/nvm.sh --no-use ';'

nvm use default

# Created by `pipx` on 2023-04-11 17:48:21
set PATH $PATH /Users/michael/.local/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/michael/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/michael/Downloads/google-cloud-sdk/path.fish.inc'; end

# pnpm
set -gx PNPM_HOME "/Users/michael/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end