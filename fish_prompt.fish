if test $status -eq 0
  set EXIT_SYMBOL 﫟
else
  set EXIT_SYMBOL ' '
end
set_color blue
printf %s 
set_color -r
printf %s $EXIT_SYMBOL
set_color normal
set_color -b black
printf ' %s ' $USER
set_color -ro blue
printf ' %s' (date "+%M:%S")
set_color normal
set_color blue
printf %s 
set_color normal
printf %s ' '
