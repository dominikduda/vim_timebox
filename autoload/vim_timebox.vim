function! vim_timebox#new(...)
  let s:timebox_duration = a:0 == 1 ? a:1 : g:vim_timebox#default_duration
  let s:unix_focus_time_end = localtime() + s:timebox_duration * 60
  call system('rm /tmp/vim_pomodoro_end_timestamp')
  call system('touch /tmp/vim_pomodoro_end_timestamp')
  call system('echo "' . s:unix_focus_time_end . '" >> /tmp/vim_pomodoro_end_timestamp')
endfunction

function! vim_timebox#time_left()
  if (!filereadable('/tmp/vim_pomodoro_end_timestamp'))
    return('')
  endif
  let s:seconds_left = (system('tail -n 1 /tmp/vim_pomodoro_end_timestamp') - localtime())

  if (s:seconds_left < 0)
    return('Timebox elapsed ⬚ ')
  endif
  let s:full_seconds_left = (s:seconds_left % 60)
  let s:full_minutes_left = s:seconds_left / 60
  let s:separator = (localtime() % 2) == 1 ? '⧗' : '⧖'
  let s:counter = "Timebox " . s:full_minutes_left . " min " . s:full_seconds_left . " sec " . s:separator
  return(s:counter)
endfunction

function! vim_timebox#disable()
  call system('rm /tmp/vim_pomodoro_end_timestamp')
endfunction
