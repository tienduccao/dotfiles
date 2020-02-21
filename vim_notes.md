# Useful commands
+ Show list key maps `:map`
+ Open the URL under the cursor `gx`

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

