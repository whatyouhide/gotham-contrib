#!/bin/sh
# Gotham - Shell color setup script

if [ "${TERM%%-*}" = 'linux' ]; then
    # This script doesn't support linux console (use 'vconsole' template instead)
    return 2>/dev/null || exit 0
fi

color00="0a/0f/14" # Base 00 - Black
color01="c3/30/27" # Base 08 - Red
color02="26/a9/8b" # Base 0B - Green
color03="ed/b5/4b" # Base 0A - Yellow
color04="19/54/65" # Base 0D - Blue
color05="4e/51/65" # Base 0E - Magenta
color06="33/85/9d" # Base 0C - Cyan
color07="98/d1/ce" # Base 05 - White
color08="10/15/1b" # Base 03 - Bright Black
color09="d2/69/39" # Base 08 - Bright Red
color10="08/1f/2d" # Base 0B - Bright Green
color11="24/53/61" # Base 0A - Bright Yellow
color12="09/37/48" # Base 0D - Bright Blue
color13="88/8b/a5" # Base 0E - Bright Magenta
color14="59/9c/aa" # Base 0C - Bright Cyan
color15="d3/eb/e9" # Base 07 - Bright White
color_foreground="98/d1/ce" # Base 05
color_background="0a/0f/14" # Base 00
color_cursor="98/d1/ce" # Base 05

if [ -n "$TMUX" ]; then
  # tell tmux to pass the escape sequences through
  # (Source: http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/1324)
  printf_template="\033Ptmux;\033\033]4;%d;rgb:%s\007\033\\"
  printf_template_var="\033Ptmux;\033\033]%d;rgb:%s\007\033\\"
  printf_template_custom="\033Ptmux;\033\033]%s%s\007\033\\"
elif [ "${TERM%%-*}" = "screen" ]; then
  # GNU screen (screen, screen-256color, screen-256color-bce)
  printf_template="\033P\033]4;%d;rgb:%s\007\033\\"
  printf_template_var="\033P\033]%d;rgb:%s\007\033\\"
  printf_template_custom="\033P\033]%s%s\007\033\\"
else
  printf_template="\033]4;%d;rgb:%s\033\\"
  printf_template_var="\033]%d;rgb:%s\033\\"
  printf_template_custom="\033]%s%s\033\\"
fi
#
## 16 color space
printf $printf_template 0  $color00
printf $printf_template 1  $color01
printf $printf_template 2  $color02
printf $printf_template 3  $color03
printf $printf_template 4  $color04
printf $printf_template 5  $color05
printf $printf_template 6  $color06
printf $printf_template 7  $color07
printf $printf_template 8  $color08
printf $printf_template 9  $color09
printf $printf_template 10 $color10
printf $printf_template 11 $color11
printf $printf_template 12 $color12
printf $printf_template 13 $color13
printf $printf_template 14 $color14
printf $printf_template 15 $color15

# foreground / background / cursor color
if [ -n "$ITERM_SESSION_ID" ]; then
  # iTerm2 proprietary escape codes
  printf $printf_template_custom Pg d8d8d8 # forground
  printf $printf_template_custom Ph 181818 # background
  printf $printf_template_custom Pi d8d8d8 # bold color
  printf $printf_template_custom Pj 383838 # selection color
  printf $printf_template_custom Pk d8d8d8 # selected text color
  printf $printf_template_custom Pl d8d8d8 # cursor
  printf $printf_template_custom Pm 181818 # cursor text
else
  printf $printf_template_var 10 $color_foreground
  printf $printf_template_var 11 $color_background
  printf $printf_template_var 12 $color_cursor
fi

# clean up
unset printf_template
unset printf_template_var
unset color00
unset color01
unset color02
unset color03
unset color04
unset color05
unset color06
unset color07
unset color08
unset color09
unset color10
unset color11
unset color12
unset color13
unset color14
unset color15
unset color_foreground
unset color_background
unset color_cursor
