let g:vim_timebox#default_duration = get(g:, 'vim_timebox#default_duration', 30)

command! -nargs=* TimeboxNew call vim_timebox#new(<f-args>)
command! TimeboxDisable call vim_timebox#disable()
