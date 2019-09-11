<img src="https://raw.githubusercontent.com/dominikduda/config_files/master/dd_logo_blue_bg.png" width="300" height="300" />

# vim_timebox
Want try solving a problem in limited time? *vim_timebox* is simple vim-exit-surviving timer.

<img src="https://raw.githubusercontent.com/dominikduda/vim_timebox/master/images/enabled.png" />
<img src="https://raw.githubusercontent.com/dominikduda/vim_timebox/master/images/elapsed.png" />

##### Why should you use it?
  - Simple but sufficient timebox solution
  - Creates temp timestamp file which makes it independent of vim process
  - Works out of the box!

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

To strart new timebox with default duration use:
```
:TimeboxNew
```

To strart new timebox with append it to command above (minutes):
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
