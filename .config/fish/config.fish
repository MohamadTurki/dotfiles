  if status is-interactive
  set fish_greeting
    # Commands to run in interactive sessions can go here
    alias wallpapers='cd /home/heho/Pictures/wallpapers'
    alias screenshots='cd /home/heho/Pictures/screenshots'
    # alias weather='curl wttr.in'
    alias nvimc='nvim ~/.config/nvim'
    alias i3c='nvim ~/.config/i3/config'
    alias cb="xclip -selection clipboard"
    alias lib32-find="aa -Qsq | grep lib32 | fzf | xargs pacman -Qi"
    alias lspci-fzf="lspci | fzf --preview-window='top:50%:nowrap' --preview=\"echo {} | grep -o '[0-9a-zA-Z][0-9a-zA-Z]:[0-9a-zA-Z][0-9a-zA-Z]\.[0-9a-zA-Z]' | xargs -I[] lspci -k -s [] | grep -z --color=always -e '[0-9a-zA-Z][0-9a-zA-Z]:[0-9a-zA-Z][0-9a-zA-Z]\.[0-9a-zA-Z]'\""
    alias fonts='fc-list --format="%{family}\n" | cut -d , -f 1 | sort | uniq | sed -z "s/\n//" | fzf | cb'
    alias keys="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf \"%-3s %s\n\", \$5, \$8 }'"
    alias refkeys="pkill xbindkeys && xbindkeys"
    alias icons='ls -l /usr/share/icons/'
    alias encrypt='gpg -c --no-symkey-cache --cipher-algo AES256'
    alias passwords='keepassxc ~/.important/passes'

    alias scripts="cd ~/scripts"
    # Python Scripts
    alias location='python3 ~/scripts/python/location.py'
    alias passgen='python3 ~/scripts/python/inch.py'
    alias ytdl='python3 ~/scripts/python/yt-dl.py'
    alias water_data='python3 ~/life/coding/python/yhyo-water/server/control_db.py'
    alias wota='python3 ~/life/coding/python/yhyo-water/client/main.py'
    # Shell Scripts
    alias uncle='~/scripts/shell/uncle'
    alias update='~/scripts/shell/update'
    alias clean='~/scripts/shell/clean'
    alias layouts='nvim ~/scripts/shell/layout'


    alias sxhkdrc='nvim ~/.config/sxhkd/sxhkdrc'
    alias mirrorlist='cat /etc/pacman.d/mirrorlist'
    alias ll='ls -alF'
    alias get_template='cp /home/heho/Templates/1.tex note.tex'
    alias grep='grep --color=auto'
    alias edita='nvim ~/.config/fish/config.fish'
    alias refresha='source ~/.config/fish/config.fish'
    alias bashrc='nvim ./.bashrc &'
    alias xinitrc='nvim ~/.xinitrc'
    alias aa='paru'
    alias trafic='sudo tcpdump -i enp37s0 -s 0 -w ~/Documents/output.pcap'
    alias showtrafic='wireshark ~/Documents/output.pcap'
    alias dl_history='shred ~/.local/share/fish/fish_history && rm ~/.local/share/fish/fish_history && history clear'
    alias show_history='cat ~/.local/share/fish/fish_history'
    alias life='cd ~/life'
    alias workout='glow ~/life/workout/workout.md'
    alias todos='nvim ~/life/todos.md'
    alias dwmc='cd ~/suckless/dwm-flexipatch && nvim ~/suckless/dwm-flexipatch'
    alias stc='cd ~/suckless/st-flexipatch && nvim ~/suckless/st-flexipatch'
    alias slc='cd ~/suckless/slstatus && nvim ~/suckless/slstatus'
    alias dbc='cd ~/suckless/dwmblocks && nvim ~/suckless/dwmblocks'
    alias keybinds='nvim ~/.xbindkeysrc'
    alias compile='cd ~/suckless/dwm-flexipatch && sudo make clean install'
end

set -x PATH ~/.local/bin/modules $PATH
 
# set -g fish_color_prompt green
# set -g fish_color_normal red
# 
# function todoa
    # python3 ~/scripts/todo_list/main.py add --item "$1"
# end



