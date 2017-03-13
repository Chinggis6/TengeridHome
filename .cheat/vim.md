l Legend

Vim mastery

^ - Ctrl (Control key)

Case matters

## Trimodality
Vim has three major modes: Normal, Insert, and Visual unlike Vi which had only two lacking the Visual mode

# Ex mode (:)

.= - Show *current* line **number**

= - Show *total* line **number**

r - Insert file or command output (prefix the command with !) (r is for `:read`)

n,Nw filename - write the lines n *through* N to a new **file**

center - center the selected text

sview - split view in read only mode

# Normal mode (ESC)

gj - go down even through wrapped line
gk - same to go up

Y - copy line (without new line character)

^a - increment number
^x - decrement number

za - toggle fold

zf#j - create fold from cursor down # lines
zf/string - create fold down to string (but not including)

zd - delete created fold
zE - deleted all created folds

]z - go to the end of the fold
[z - go to the beginning of the fold

zo - open fold at cursor by one level
zO - open all folds at the cursor

zr - open all folds one level
zm - close all folds one level

zR - open all folds (in the buffer) all levels
zM - close all open folds (in the buffer)

> Run from the start of the heading, the first line it contains
zj - next fold
zk - previous fold

> Execute one line down from the heading
zo - open current fold
zc - close current fold

K - bring up manual page for command under cursor

^I - insert indentation (tab character), same as Tab

^T - indent (tab)
^D - delete one indent

gx - execute file under cursor (with default app)
gf - edit file under cursor

^z - suspend (call back with fg) (:stop, :suspend) (none-blank character)

- - move up (non-blank character)
+ - move down (non-blank character) (^m)
_ - move n-1 lines down (non-blank character)

## Splits

^w = - equate all splits' widths
^w _ - maximize split's height
^w + + increase height (allows number input)
^w + - decrease height 


^w ^w - cycle through splits
^w q - close a split
^w v - split window vertically
^w s - split window horizontally
^w n - split new horizontal window
^w c - close split
^w w - switch between splits
^w t - switch to the **top** left split
^w r - rotate split
^w R - rotate split back
^w n| - Set width of the current split
^w n _ - Set height of the current split
^w T - Move window to a new **tab**
^w HJKL - move split to the very left/down/up/right of the screen

. - repeat command on (repeat the last command mode command on the object under the cursor. esp. useful to make the text bold by surrounding it with double stars, eg, **bold**, see `surround.vim`)

X - delete a letter back

I - insert *before* **line** (before the first non-blank character, because the line might be indented)

   NEW

A - append *after* **line**

^E - scroll *down* a **line**

^Y - scroll *up* a **line**

^g - Display the total number of lines in the file, along with percentage (and if the file is modified and unsaved)

U - undo the last line completely (cannot be redone)

zz - **center** the line (z.)
zt - top the line
zb - bottom the line

} - go a **paragraph** forward

{ - go a **paragraph** backward

^ - go to the line beginning (first non-blank character)
g _ - go to the line end (first non-blank) (esp. useful for yanking line in visual mode)

Checkout this VIM cheat sheet

f - go to the character
F - go back to the character

t - go at the character
T - go back at the character

; - next (repeat movement)
, - previous (repeat movement back)

% - jump between brackets

s - substitute, delete a **character** and switch to insert mode

gv - reselect (select last selected text block in visual mode)

J - append a **line** below (delimiting by space)

m - mark position, a line or character (lowercase locally, ie. in the current buffer, uppercase globally, between files)

' - go to marked line (beginning, non-blank character, lower or uppercase)
` - go to marked character

`` - go to last character
'' - go to last line

dst - delete surrounding tags
dsb - delete surrounding brackets

guu - lowercase line
guw - uppercase word

gUU - uppercase line
gUw - uppercase word

g~~ - change line case
g~w - change word case

# Insert mode (i)

^n - complete word already existing in the file, by next first match
^p - un-complete word, by previous first match

## Cross completion sub-mode (^x)

^x ^k to complete keyword
^x ^l to complete line
^x s spelling suggestion
^x ^v Vim commands
^x ^u Complete User-defined Function

^t - indent (shift), same as >> in Normal mode
^d - de-indent (shift back), same as <<

^h - delete a **letter** back

^w - delete a **word** back

^u - delete a **line** back (ie. until beginning)

^k - delete a **line** forward (ie. until end)

^j - move a **line** *after* down

^r - paste (0 from selection, " from clipboard) 

dib - delete between brackets
dab - delete brackets

// - go forward to the last searched term found (//n to move n or -n lines up/down) (places the cursor on the first letter of the term)
?? - go backward to the last searched term found

 \V - literal search

n - next search term
N - previous search term

gn - visually select next term
gN - visually select previous term

--- 

# Visual mode

O - move to the beginning end or of the selected block

miw - mark a word
maw - mark a word with all whitespace after it

`>` - indent the line one tab right
`<` - indent the line one tab left

S - surround
gs - surround in block

= - beautify
gq - one line

gu - lowercase text
gU - uppercase text

## Plugins

* cgn . - Change matched words one-by-one

# Others

> vim: ft=markdown 
