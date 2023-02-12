# Useful commands
+ Show list key maps `:map`
+ Open the URL under the cursor `gx`
+ Latex forward search: `<localleader>lv`

# Utility plugins
## Aligning text by some character: [vim-lion](https://github.com/tommcdo/vim-lion)
+ `glip=` add spaces to the left of character **=**
```
$i        = 5;
$username = 'tommcdo';
$stuff    = array(1, 2, 3);
```
+ `gLip,` add spaces to the right of character **,**
```
$names = array(
    'bill',    'samantha', 'ray',       'ronald',
    'mo',      'harry',    'susan',     'ted',
    'timothy', 'bob',      'wolverine', 'cat',
    'lion',    'alfred',   'batman',    'linus',
);
```
## Text objects based on indentation levels: [vim-indent-object](https://github.com/michaeljsmith/vim-indent-object)
+ `v<count>ai`: select lines from the current indentation level and **<count>**
above indentation levels (a missing `<count>` means 1).
+ `vii`: select lines from the current indentation level.
+ `v` can be replaced by other operations such as `d` (delete), `y` (copy),
`c` (change).

## Python autocompletion with [vim-lsc](https://github.com/natebosch/vim-lsc), [python-language-server](https://github.com/palantir/python-language-server), and [VimCopletesMe](https://github.com/ajh17/VimCompletesMe)
+ Autocompletion is executed automatically after typing at least 3 characters
or manually after pressing Tab key.
Continue pressing Tab to select a suggestion in the popup window.
+ `gd`: go to definition of function, module.
+ `gR`: rename variable/function.
+ `gm`: show function signature, the cursor must be placed under ( or ) character.
+ `go`: show a quickquick window of symbols (variables, functions).
+ `K`: show a preview window to display information of a function under the cursor.
+ To use all of these features in virtualenv, python-language-server needs to
be installed (`pip install 'python-language-server[all]'`) first.

# Troubleshooting
## Make fzf respect .gitignore 
First install `fd` command, e.g., `brew install fd` on Mac.
Then

```
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'
```
