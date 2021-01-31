# What tools do you need? #
- make
- grep
- git
- sh
- man

# What tools do you can use? #
- python
- ...
- *

# What tools do you really need? #
- some computer
# But I have no idea how to use vim? #
- :help
- vimtutor
- try it

# But I have no idea how to use linux/unix ! #
- man
- info
- try it
- stackoverflow
- ppl (twitter)
# vim has modes #
- command mode
- ex mode
- insert mode
- normal mode
- visual mode

## insert mode ##
- enter stuff
- ctrl+r+register
  * \+ for clipboard
  * \* for visual
  * = for eval
  * % for file name
  * : for last cmd
  * [0..9] for last yank/delete
- inserts are actions
- substitute, append, insert

## normal mode ##
- work with the file content
- yank/paste
- record macros
- use vim language

## command mode ##
- work with the file
- call functions
- use external tools
- replace stuff

## ex mode ##
- work with vim
- always command mode
- write vim script

# vim language #
**factor action motion/selection modifier**

## motions ##
- [hjkl] : left, down, up, right
- [wb] : word forward **b**ackwards
- /foobar : go to next occurence of foobar
- ?foobar : like / but backwards
- \* : next occurent of current word
- fX : go to next occurence of X
- tX : fXh
- gg : go to beginning
- G : go to end of file
- g] : go to tag **well talk about that**
- gd : gg \*
- :help motion
- :number : got to line number

## selection ##
- i( : everything between (-pair; also "'[{
- vmotion : from cursor pos and after motion
- % : complete file
- a,b : line a to b
- <,> : last selected area (' for line, ` for character)

## action ##
- c : change the current selction (delete and switch to insert)
- s : change the current character (delete and switch to insert)
- rX: fill current selection/character with X
- k : search current word in manpage
- d : delete selection or motion
- x : delete current selection/characgter
- y : copy selection/motion
- p : paste / replace selection
- = : align/indent selection/motion
- . : repeat last action
- u : undo last action
- ctrl+r : redo last action (also see undo-tree)
- ctrl+d : completion (see completion)

# vim commands #
- all prefix with :
- executet in current buffer
- will be added to command history

## file commands ##
- e : open or reload file (edit)
- w : write buffer content to filesystem
- q : close current buffer
- find : find file under path and edit it


## content commands ##
- s/foo/bar/modifier : substitute foo with bar
  **most used modifiers** (
  * n : count matches (do not replace)
  * a : ask before replacing
  * g : replace all
- read file : append file after cursor
- a,b!cmd : replace selection with cmd output (use , for current cursor pos)

## unix commands ##
- grep : search for expr and show pos in quickfix window
- make : try to build target and show errors in quickfix window
- tag : find term in ctags database
- !/sh : execute shell command

## vim commands ##
- :help : show help
- :set : show/set current setting
- :let : set variables

# buffer and windows #


## buffers in vim ##
- one buffer holds one state of a file
- output can be directed into buffers
- buffers can be compared
- content can be written to multiple buffers

## widows in vim ##
- one winodw shows one buffer
- windows can be moved, resized, splitted and closed
- windows can synched (for scrolling)
- window commands:
  * ctrl+hjkl : move focus to window (left,botton, top,right) of current one
  * :split : horizontal split
  * :vsplit : vertical split
  * :left cmd : spawn next window right of current one
  * ctrl+o : go to last location
