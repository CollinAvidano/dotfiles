#!/usr/bin/env bash
#
# bootstrap installs things.

# Stolen from holman's dotfiles on github
# this script needs git to be installed!

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd)

set -e

echo ''

info () {
	printf "  [ \033[00;34m..\033[0m ] $1"
}

user () {
	printf "\r  [ \033[0;33m?\033[0m ] $1 "
}

success () {
	printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
	printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
	echo ''
	exit
}

setup_gitconfig () {
	if ! [ -f git/.gitconfig ]
	then
		info 'setup gitconfig'

		git_credential='cache'
		if [ "$(uname -s)" == "Darwin" ]
		then
			git_credential='osxkeychain'
		fi

		user ' - What is your github author name?'
		read -e git_authorname
		user ' - What is your github author email?'
		read -e git_authoremail

		sed -e "s/AUTHORNAME/$git_authorname/g" -e "s/AUTHOREMAIL/$git_authoremail/g" -e "s/GIT_CREDENTIAL_HELPER/$git_credential/g" git/gitconfig.symlink.example > git/.gitconfig

		success 'gitconfig'
	fi
}


link_file () {
	local src=$1 dst=$2

	local overwrite= backup= skip=
	local action=

	if [ -f "$dst" -o -d "$dst" -o -L "$dst" ]
	then
		if [ "$overwrite_all" == "false" ] && [ "$backup_all" == "false" ] && [ "$skip_all" == "false" ]
		then
			local currentSrc="$(readlink $dst)"

			if [ "$currentSrc" == "$src" ]
			then
				skip=true;
			else
				user "File already exists: $(basename "$src"), what do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all?"
				read -n 1 action
				case "$action" in
					o )
						overwrite=true;;
					O )
						overwrite_all=true;;
					b )
						backup=true;;
					B )
						backup_all=true;;
					s )
						skip=true;;
					S )
						skip_all=true;;
					* )
						;;
				esac
			fi
		fi

		overwrite=${overwrite:-$overwrite_all}
		backup=${backup:-$backup_all}
		skip=${skip:-$skip_all}

		if [ "$overwrite" == "true" ]
		then
			sudo rm -rf "$dst"
			success "removed $dst"
		fi

		if [ "$backup" == "true" ]
		then
			mv "$dst" "${dst}.backup"
			success "moved $dst to ${dst}.backup"
		fi

		if [ "$skip" == "true" ]
		then
			success "skipped $src"
		fi
	fi

	if [ "$skip" != "true" ]  # "false" or empty
	then
		sudo ln -s "$1" "$2"
		success "linked $1 to $2"
	fi
}


install_vundle() {
	if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
		git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

		vim +PluginInstall +qall

		# youcompleteme install
		# if [ -f "~/.vim/bundle/YouCompleteMe/install.sh" ]; then
		#     ~/.vim/bundle/YouCompleteMe/install.sh --clang-completer
		# fi
	fi
}

install_plug() {
	if [ ! -f ~/.vim/autoload/plug.vim ]; then
		curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
			https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

		# use actual vim
		\vim +PlugInstall

		if ! [ -d "${XDG_CONFIG_HOME:=$HOME/.config}/nvim" ]; then
			mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
			ln -sf ~/.vim ${XDG_CONFIG_HOME:=$HOME/.config}/nvim
			ln -sf ~/.vimrc ${XDG_CONFIG_HOME:=$HOME/.config}/nvim/init.vim
		fi

		# youcompleteme install
		# if [ -f "~/.vim/bundle/YouCompleteMe/install.sh" ]; then
		#     ~/.vim/bundle/YouCompleteMe/install.sh --clang-completer
		# fi
	fi
}

install_fzf() {
	if [ ! -d ~/.fzf ]; then
		git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
		~/.fzf/install
	fi
}

install_dotfiles () {
	info 'installing dotfiles'

	local overwrite_all=false backup_all=false skip_all=false

	for src in $(find "$DOTFILES_ROOT" -maxdepth 2 -mindepth 2 -name '.*' | egrep -v '\.git$|.*gitignore$|.*symlink.*$')
	do
		dst="$HOME/$(basename "${src}")"
		link_file "$src" "$dst"
	done
}

install_dotfolders () {
	info 'installing dotfolders'

	local overwrite_all=false backup_all=false skip_all=false
	for src in $(find "$DOTFILES_ROOT" -maxdepth 2 -type d -name '*.symlink')
	do
		dst="$HOME/.$(basename "${src%.*}")"
		# TODO make link_folder
		link_file "$src" "$dst"
	done
}

# copy things from bin into path (OBSOLETE)
install_path() {
	info 'installing path'

	local overwrite_all=false backup_all=false skip_all=false

	for src in $(find "$DOTFILES_ROOT/bin" -maxdepth 1 -type f -name '*')
	do
		dst="/usr/local/bin/$(basename "${src}")"
		link_file "$src" "$dst"
	done
}

# sets up zsh as default shell, if installed
setup_zsh() {
	command -v  zsh > /dev/null
	if [ $? -eq 0 -a -z "$(echo $SHELL | grep zsh)" ]; then
		chsh -s $(command -v zsh)

		# Run script as root instead
		# chsh -s $(command -v zsh) root
	fi
}

pip3_install() {
	pip3 install -r script/pipackages3.txt
}

pip2_install() {
	pip2 install -r script/pipackages2.txt
}

# install_powerline_fonts() {
# 	if [ -z "`fc-list | grep -i powerline`" ]; then
# 		git clone https://github.com/powerline/fonts.git /tmp/fonts
# 		/tmp/fonts/install.sh
# 	fi
# }

# Start actual setup
setup_gitconfig
install_dotfiles
install_dotfolders


# installs fzf if needed
install_fzf

# installs the path things. Will fail if no sudo
# install_path

# sets up zsh as default shell (don't do this by default!)
# setup_zsh

# pip2_install
# pip3_install

echo ''
echo 'All installed!'
