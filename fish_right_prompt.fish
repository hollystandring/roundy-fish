set_color black
printf %s 
set_color normal
set_color -b black
set INREPO (git rev-parse --is-inside-work-tree 2>/dev/null)
if test "$INREPO" = "true"
  set_color blue
  printf '%s ' prompt_pwd
  set_color normal
  set_color -b purple
  set_color -o black
  printf ' %s' (git branch ^/dev/null | sed -n '/\* /s///p')
  set_color normal
  set_color purple
else
  printf '%s' (prompt_pwd)
  set_color normal
  set_color black
end
printf %s 
set_color normal
