# screen powersave
xset +dpms
xset dpms 0 0 300

# speed up key repeat rate
xset r rate 500 50

# ensure capslock is off
xmodmap -e 'clear Lock'

# set capslock to ctrl
setxkbmap -option ctrl:nocaps

# Start AwesomeWM
exec awesome

