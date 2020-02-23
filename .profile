# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# environment variables
export PATH="$HOME/.cargo/bin:$PATH"
export VIMRUNTIME=~/.vim
