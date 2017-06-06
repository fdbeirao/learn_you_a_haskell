# Todo

Taken from [Learn you a Haskell](http://learnyouahaskell.com/input-and-output#files-and-streams)

## Assumptions

> We're not going to concern ourselves with possible bad input too much right now.

## User interface

#### Creating/Adding a todo to a file
```
todo add todo.txt "Find the magic sword of power"
```

#### Listing todos in an existing file
```
todo view todo.txt
```

#### Removing a todo from an existing todo file
```
todo remove todo.txt 2
```

## Compilation && Execution

```
ghc --make -fwarn-missing-import-lists ./todo.hs

./todo add todo.txt "Find the magic sword of power"
./todo add todo.txt "Clean the magic feathers"
./todo add todo.txt "Watch the last video on YouTube"
./todo view todo.txt
./todo remove todo.txt 2
./todo view todo.txt
```