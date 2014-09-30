function fish_title
  if [ $_ = 'fish' ]
    printf '%s ' (hostname)
    printf '%s ' $_
    echo (prompt_pwd)
  else
    echo $_
  end
end
