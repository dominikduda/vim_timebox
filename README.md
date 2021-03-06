<img src="https://raw.githubusercontent.com/dominikduda/config_files/master/dd_logo_blue_bg.png" width="300" height="300" />

# vim_timebox
Want try solving a problem in limited time? *vim_timebox* is simple vim-exit-surviving timer.

![beginning](https://raw.githubusercontent.com/dominikduda/vim_timebox/master/gifs/beginning.gif)
![ending](https://raw.githubusercontent.com/dominikduda/vim_timebox/master/gifs/ending.gif)

##### Why should you use it?
  - Simple but sufficient timebox solution
  - Uses temp file which makes it independent of vim process

## Installation
via `Plug`, `Neobundle` or `Vundle`:
```
Plug 'dominikduda/vim_timebox'
NeoBundle 'dominikduda/vim_timebox'
Plugin 'dominikduda/vim_timebox'
```
via `Pathogen`:
```
git clone https://github.com/dominikduda/vim_timebox.git ~/.vim/bundle/vim_timebox
```

## How to use

Add one of following to your `.vimrc` depending on your status line handling:

#### With airline plugin:
```vim
let g:airline_section_x = "%{vim_timebox#time_left()}"
call timer_start(900, {-> execute(':AirlineRefresh')}, { 'repeat': -1 })
```

#### With default status line:

```vim
set  statusline+=%{vim_timebox#time_left()}
call timer_start(900, {-> execute(':redraw')}, { 'repeat': -1 })
```

#### Other commands:

To start a new timebox with default duration use:
```
:TimeboxNew
```

To start a new timebox with custom duration use (10 minutes):
```
:TimeboxNew 10
```

To disable timebox:
```
:TimeboxDisable
```


## Customization (values written here are defaults)

#### Change default duration:

```vim
" Value in minutes
let g:vim_timebox#default_duration = 30
```

<!-- call timer_start(100, {-> execute(':AirlineRefresh')}, { 'repeat': -1 }) -->
