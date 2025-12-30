## capture groups

```regexp
# one capture group
vats\.addnewresult\("([^"]*)"\)
vats.addnewresult("$1 + EXTRA")

# two capture group
vats\.addnewresult\("([^"]*) ([^"]*)"\)
vats.addnewresult("$1@ + $2@")
```
