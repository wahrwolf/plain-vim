# Cricket with flamingos
## What is a register?##
- mini buffers for tex
- most can be set manually
- some have special effects

#### what can vim do with them ?####
- save snippets
- save commands
- save search queries
- paste them

#### basic uses ####
- "Ay : append yank operation to buffer a
- "ay : insert yank opertion to buffer a
- "ap : paste buffer after cursor
- qaq : insert text to buffer
- ctrl+r a : paste buffer (works for all modes)
## Most common registers ##
- [a-z] : free to use personal buffers
- [0-9] : last buffers
- / : contains last search query
- . : contains last commadn
- % contains file name
- \+ : clipboard
- \* : primary selection
- = : evaluates expr and prints it
- \_ : the blackhole register
- \- : small delete register (less than a line)
## Macros ##
- a series of actions which can be easily repeated
- no recursion allowed (see functions)
- can be used to enter snippets
- use q[a-z] to start recording macro into register
- use q again to stop macros
- use @[a-z] to execute macro (@@ to execute last used macro)

#### How to they work? ####
- execute every keystroke from normal mode
- use q to write text into a register
- use @ to interpret register as commands!

#### How to hack that? ####
- save snippets in files for easy access
- yank snippets into registers
- edit snippets by pasting and reyanking them

#### search/command buffer ####
- use q: to access the command history
- use q/ to access the search history
- use normal vim commands to navigate in that buffer
- press enter to execute the current line as a command/search
