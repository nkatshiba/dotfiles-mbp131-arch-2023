# > x6 -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
abbr -a xx 'cd ~/.6x/ && clear && ls -a'
## Main/videos
abbr -a xxv 'vi ~/.6x/xxvi'
abbr -a xxvc 'bat ~/.6x/xxvi'
abbr -a xxvcc 'command cat ~/.6x/xxvi'
abbr -a xxvm 'less +F ~/.6x/xxvi'
## Search/Tube
abbr -a xxt 'vi ~/.6x/xxtu'
abbr -a xxtc 'bat ~/.6x/xxtu'
abbr -a xxtcc 'command cat ~/.6x/xxtu'
abbr -a xxtm 'less +F ~/.6x/xxtu'
## Lek
abbr -a xxl 'vi ~/.6x/xxle'
abbr -a xxlc 'bat ~/.6x/xxle'
abbr -a xxlcc 'command cat ~/.6x/xxle'
abbr -a xxlm 'less +F ~/.6x/xxle'
# < /x6 -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# System specific functions
abbr -a rmrf 'rm -rfi'
abbr -a :q exit
abbr -a cpr 'cp -r'
abbr -a pwd pwdcp
abbr -a pwg pwdcd

# wl-clipboard
abbr -a wlc 'wl-copy -n'
abbr -a wl-copy 'wl-copy -n'
abbr -a wlp wl-paste

# bat
abbr -a cak bat
abbr -a cat 'command cat'
abbr -a caka "clear && bat *"
abbr -a cata "clear && bat *"
# abbr -a clear ' wtype -M ctrl -k l -m ctrl'

# abbr -a bf "clear && batgrep $argv  # batgrep <ACTION> <DIR/FP>"
abbr -a bd batdiff
abbr -a diff 'git diff'
abbr -a man batman
# abbr -a rg batgrep
abbr -a grep rg

# LS / LSD
abbr -a ls lsd
abbr -a lss 'clear && lsd *'
abbr -a ls1 'lsd -1'
abbr -a lsa 'lsd -a'
abbr -a exg 'lsd -al | grep'
abbr -a lsl 'lsd -l'
abbr -a lst 'clear && lsd --tree'
abbr -a lsta 'lsd -a --tree'
abbr -a ls2 'lsd --tree --depth 1'
abbr -a ls3 'lsd --tree --depth 2'
abbr -a ls4 'lsd --tree --depth 3'
abbr -a lsa2 'lsd -a --tree --depth 1'
abbr -a lsa3 'lsd -a --tree --depth 2'
abbr -a lsa4 'lsd -a --tree --depth 3'
abbr -a lsss 'lsd -l --total-size --sizesort'
abbr -a lsat 'clear && lsd -a --tree'

# Source / Reloading
abbr -a wbr 'nohup waybar -c config -s style.css > /dev/null 2>&1 &'

# PS
abbr -a psm10 'ps -eo pid,ppid,cmd,comm,%mem,%cpu --sort=-%mem | head -10'
abbr -a psm50 'ps -eo pid,ppid,cmd,comm,%mem,%cpu --sort=-%mem | head -50'
abbr -a psc10 'ps -eo pid,ppid,cmd,comm,%mem,%cpu --sort=-%cpu | head -10'
abbr -a psc50 'ps -eo pid,ppid,cmd,comm,%mem,%cpu --sort=-%cpu | head -50'

# Navigation
abbr -a dlds 'cd ~/Downloads/'
abbr -a docs 'cd ~/Documents/'
abbr -a pics 'cd ~/Pictures/'
abbr -a desk 'cd ~/Desktop/'
abbr -a nts 'cd ~/nts/'
abbr -a prts 'cd ~/Pictures/screens'
abbr -a ... 'cd ../../'
abbr -a .... 'cd ../../../'
abbr -a play 'clear && cd $HOME/src/PLAYGROUND/ && ls'
abbr -a src 'cd ~/src/'
abbr -a mlv mullvad
abbr -a c 'cd $HOME/.config/'

# Apps
abbr -a hcol hyprpicker
abbr -a kalk kalker
abbr -a jj z
abbr -a j z
abbr -a tt timetrace
abbr -a du dust
abbr -a cod berg
abbr -a mongo mongotimer
abbr -a imvf 'imv -drf '
abbr -a nwg nwg-look

# Echoes
abbr -a epath 'echo $PATH'

# Git
abbr -a gcmhf 'git commit -m "hotfix(es)"'
abbr -a gcm 'git commit -m'
abbr -a gp 'git push'
abbr -a gpu 'git push'
abbr -a gs 'git status -s'
abbr -a gss 'git status'
abbr -a grp 'git pull --rebase'
abbr -a ga 'git add'
abbr -a gaa 'git add .'
abbr -a gd 'git diff'
abbr -a grm 'git rm'
abbr -a gcl 'git clone'
abbr -a gf 'git fetch'
abbr -a gb 'git branch'
abbr -a gcma 'git commit --amend -m' # Rename last commit
abbr -a grmd 'git rm $(git ls-files --deleted)' # Remove deleted files from both index and working dir
abbr -a gl 'git log --oneline'
abbr -a gla 'git log --oneline --all'
abbr -a gc 'git checkout'
abbr -a grc 'git reset --soft HEAD~1' # Undo last commit
abbr -a gra 'git reset' # Undo last add command (All or file)
abbr -a gr 'git restore'
abbr -a gmv 'git mv'
abbr -a gbl 'git branch --list'
abbr -a gbi 'git bisect'

# Poetry
abbr -a por 'poetry run python'
abbr -a paa 'poetry run python main.py'
abbr -a porm 'poetry run python main.py'

# Chezmoi
abbr -a cm chezmoi
abbr -a cme 'chezmoi edit'
abbr -a ce 'chezmoi edit'
abbr -a cma 'chezmoi add'
abbr -a cmappv 'chezmoi apply -v'
abbr -a cmapp 'chezmoi apply'
abbr -a cmcd 'cd $HOME/.local/share/chezmoi/dot_config'
abbr -a cmdii 'chezmoi diff'
abbr -a cmdi "chezmoi diff | rg --line-number 'diff --git a/'"

abbr -a vii 'chezmoi edit'
abbr -a cms 'chezmoi status'
abbr -a cmf 'chezmoi forget && fish'
abbr -a cmgp 'ssh-add /home/xshiba/.ssh/id_ed25519 && git push && git push gh'
# Tree
abbr -a tree1 'tree -L 1'
abbr -a tree2 'tree -L 2'
abbr -a tree3 'tree -L 3'

# SHELL / TERMINAL
abbr -a f fish
abbr -a qq exit
abbr -a h2 "eval (history | head -n2 | tail -n1 | sed 's/^[ ]*[0-9]*[ ]*//')"
# abbr -a hh "commandline -i (history | head -n2 | tail -n1 | sed 's/^[ ]*[0-9]*[ ]*//')"

# Pacman / Yay
#abbr -a yay yayy

# Dos
# abbr -a dos pass -c 000/dosen/dos/URI/prvt/dos1 && exec $wl-paste

# Pass
abbr -a passl 'clear && pass ls'
abbr -a passm pass mv
abbr -a passr pass rm
abbr -a passf pass find
abbr -a passc pass cp
abbr -a passi pass insert
abbr -a passg pass git
abbr -a passh pass help
abbr -a pac 'pass -c'
abbr -a pas 'pass -c'

# Convert
abbr -a convertzip 'convert -density 150 -compress Zip'
abbr -a czip 'convert -density 150 -compress Zip'

# SSH
abbr -a sshnkat ssh root@174.138.101.143

# ALMA
abbr -a alma 'cd ~/alma_project/ && clear && lsd'

# MDT
abbr -a mdt "mdt --prompt 'T-?¿?¿?:' -d '/home/xshiba/nts/__tasks_and_todos' -i 'TODO.md' --color '#E475A5'"
abbr -a mdl "mdt --prompt 'L-?¿?¿?:' -d '/home/xshiba/nts/__tasks_and_todos' -i 'LONG.md' --color '#06D6A0'"
abbr -a mdp "mdt --prompt 'P-?¿?¿?:' -d '/home/xshiba/nts/__tasks_and_todos' -i 'PRIO.md' --color '#F1C583'"
abbr -a mdtt "command mdt"

# ?-ctl
## hyprctl
abbr -a hctl hyprctl
abbr -a hctld 'hyprctl dispatch'
abbr -a hctle 'hyprctl exec'
abbr -a hctlc 'hyprctl clients'
abbr -a hctlcg 'hyprctl clients | rg'

abbr -a hctlw 'hyprctl workspaces'
abbr -a hctlr 'hyprctl reload'
## brightnessctl
abbr -a bctl brightnessctl
## systemctl
abbr -a sctl systemctl
abbr -a sctls 'systemctl status'
abbr -a sctlstop 'systemctl stop'
abbr -a sctlstart 'systemctl start'
abbr -a sctlre 'systemctl restart'
abbr -a sctlenable 'systemctl enable --now'
## playerctl
abbr -a pctl playerctl
abbr -a pctls 'playerctl status'
abbr -a pctlp 'playerctl play-pause'
abbr -a pctlne 'playerctl next'
abbr -a pctlpr 'playerctl previous'
abbr -a pctlm 'playerctl metadata'
### Metadata
abbr -a pctlma 'playerctl metadata xesam:album'
abbr -a pctlmwho 'playerctl metadata xesam:artist'
abbr -a pctlmt 'playerctl metadata xesam:title'
abbr -a pctlmu 'playerctl metadata xesam:url'

## Sonos
abbr -a sonos 'playerctl volume'

# Unsorted
abbr -a mst mongotimer
abbr -a mti 'mongotimer -e '
abbr -a cell celluloid
abbr -a ww 'killall waybar && sleep 0.2 && hyprctl dispatch exec waybar && clear && echo "exec waybar at: ---" (date +'%H:%M')'
abbr -a yt 'yt-dlp "'

# Wez
abbr -a wek 'hyprctl dispatch exec wezterm connect unix'
abbr -a sr 'wezterm cli split-pane --right'
abbr -a h 'wezterm cli activate-pane-direction Left'
abbr -a l 'wezterm cli activate-pane-direction Right'
abbr -a bell 'echo -e "\a"'

# p4p4
abbr -a ya 'yaya -S'
abbr -a yas 'yay -Ss'
abbr -a yai 'yay -Si'
abbr -a yar 'yay -Rs'
abbr -a kk 'clear -x && eval $history[1]'
abbr -a ckbn '/home/xshiba/src/scripts/ckb_next/ckb-next_exec.sh'
abbr -a pa pass
abbr -a dela 'clear && env TZ=America/New_York date'
abbr -a ariay 'yt-dlp --external-downloader aria2c'
abbr -a wdt wisdom-tree
abbr -a ksk 'ssh kskat@212.193.3.135'
abbr -a kska ssh-add /home/xshiba/.ssh/id_ed25519
abbr -a ipc 'wlcc 212.193.3.135'
abbr -a tci 'time curl -s'
abbr -a rmf 'rm -rf'
abbr -a co command
abbr -a dust1 'dust -d 1'
abbr -a chk 'chmod -x * && chown xshiba:xshiba *'
# abbr -a visudo 'sudo SUDO_EDITOR=nvim visudo'
abbr -a visudo 'sudo -E visudo'
abbr -a dudu 'kill dunst && dunstify "reset" && dunstify -a "Spotify" -u low "Now Playing" (playerctl metadata xesam:title)'
abbr -a dff 'df -h -t vfat -t ext4'

# sc-im
abbr -a scim sc-im
abbr -a sci sc-im
abbr -a spre 'cd /home/xshiba/nts/spreads && sc-im salary.sc'
abbr -a da 'echo "date +%d/%m" | wl-copy -n && wtype -k Return'
abbr -a etc 'cd /etc && clear'
abbr -a root 'cd / && clear'
abbr -a atoi "cvlc -vvv pulse://alsa_output.pci-0000_00_1f.3.analog-stereo.7.monitor --sout '#transcode{acodec=mp3,ab=64,channels=2}:standard{access=http,dst=0.0.0.0:8888/pc.mp3}'"
abbr -a ata "cvlc -vvv pulse://alsa_output.pci-0000_00_1f.3.analog-stereo.7.monitor --sout '#transcode{acodec=mp3,ab=32,channels=2}:standard{access=http,dst=0.0.0.0:8888/pc.mp3}'"
abbr -a 123 "pass -c zZz/123/nkatshiba@proton.me"
abbr -a ., "./"
# abbr -a rk "rip && ls"

# LaTeX
abbr -a cont 'vi ~/src/latex/neural/content.tex'
abbr -a gg 'echo "\$\\gg\$" | wl-copy -n'
abbr -a ll 'echo "\$\\ll\$" | wl-copy -n'
abbr -a cc gpt
abbr -a sy 'gpt With the intention to be included into an academic paper, please provide synonyms or/and words,sentences or phrases analogous or similar to the following: "'
abbr -a isit 'gpt With the intention to be included into an academic paper, is it correct and suitable to formulate the following: "'
abbr -a scr 'cd $HOME/src/scripts/ && clear && lsd'

# > quickedit -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

abbr -a hhh 'cd $HOME/.config/hypr/ && vi $HOME/.config/hypr/hyprland.conf && echo $CHEZMOI_STR'
abbr -a qqq 'cd $HOME/.config/qutebrowser/ && vi $HOME/.config/qutebrowser/config.py && echo $CHEZMOI_STR'
# < /quickedit -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#
abbr -a drugsi "imv -f $HOME/Pictures/drug_interaction_chart.jpg"
abbr -a keta 'clear && pass C0RD14L5/Keta'
abbr -a rka 'rk salaries.txt && vi main.py && clear && lsd && sleep 1 && poetry run python main.py && bat salaries.txt && poetry run python main.py && bat salaries.txt'
abbr -a tks 'tmux kill-server'
abbr -a bet '/home/xshiba/src/scripts/al0ne/bet.sh'
abbr -a vol 'playerctl volume'
abbr -a pf 'cd ~/pink/ && clear && lsd --tree --depth 3'
abbr -a cho 'open /home/xshiba/chordophone/charts/chart2.jpg && exit'
abbr -a pavu pavucontrol
abbr -a redshift 'echo gammastep'

abbr -a goddag "/home/xshiba/src/scripts/godnatt_goddag/gd.sh"
abbr -a godnatt "/home/xshiba/src/scripts/godnatt_goddag/gn.sh"
abbr -a gn "/home/xshiba/src/scripts/godnatt_goddag/gn.sh"
abbr -a gd "/home/xshiba/src/scripts/godnatt_goddag/gd.sh"
abbr -a share '/home/xshiba/src/scripts/al0ne/audio_share.sh'
abbr -a slang 'gpt could you help me make the following sentence more gangter-like with old harlem slang, "'

abbr -a d1 'dust -d 2'
abbr -a d2 'dust -d 3'
abbr -a d3 'dust -d 4'
abbr -a d4 'dust -d 5'
abbr -a d5 'dust -d 6'

# abbr -a strrep "string replace -a ' ' '_' 'STR'"

abbr -a cows 'z cows && clear && lsd -1'
abbr -a cowd 'cd /cows/downloads'
abbr -a cow 'clear && ~/.config/qutebrowser/userscripts/6x/bdst.sh'
abbr -a metro '~/src/clones/metronome/src/metronome.py -b'
# abbr -a cur currencyConverter
abbr -a uni 'cd ~/uni/y1lp1 && clear && lsd --tree --depth 3'
abbr -a kde 'exec /usr/lib/kdeconnectd'
abbr -a eww '/home/xshiba/.config/eww/launch_bar'
abbr -a clock '~/src/scripts/al0ne/clock.sh && clear'
abbr -a space 'cd $HOME/SPACE && clear && lsd --tree --depth 2'
