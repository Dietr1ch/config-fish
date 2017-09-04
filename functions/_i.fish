
function _i -d 'Install stuff'
	function set_up_text
		sudo pacman -S --needed emacs neovim
		git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
		curl -fsSL https://raw.githubusercontent.com/tehnix/spaceneovim/master/install.sh
	end

	function set_up_env
		sudo pacman -S --needed \
		  multilib-devel \
		  tlp

		rmdir ~/*/ ^/dev/null
		mkdir -p ~/Projects
		mkdir -p ~/Documents
		mkdir -p ~/Downloads
		mkdir -p ~/Public

		ssh-keygen -t ed2551
	end

	function set_up_dev
		function set_up_rust
			which rustup;  and  return
			sudo pacman -S --needed rustup

			rustup default nightly
			rustup component add rust-analysis
			rustup component add rust-src
			rustup component add rls
		end
		function set_up_haskell
			which ghci;  and  return
			sudo pacman -S --needed ghc stack

			stack setup
		end
		function set_up_python
			which dmd;  and  return
			sudo pacman -S --needed python python-{pip,virtualenv} ipython

			pip install --user  neovim
		end

		set_up_rust
		set_up_haskell
		set_up_python
		sudo pacman -S --needed idris
		sudo pacman -S --needed dmd dtools ldc
	end

	function set_up_shell
		sudo pacman -S --needed \
		  git mercurial \
		  wget \
		  parallel time \
		  htop powertop iotop glances \
		  ranger tree mlocate fzf \
		  the_silver_searcher \
		  jq
	end

	function set_up_x
		sudo pacman -S --needed \
		  xorg-xev xclip xdotool unclutter \
		  noto-fonts
	end

	set_up_text
	set_up_env
	set_up_dev
	set_up_shell
	set_up_x
end
