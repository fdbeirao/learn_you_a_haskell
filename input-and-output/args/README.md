## Args

Taken from [Learn you a Haskell](http://learnyouahaskell.com/input-and-output#files-and-streams)

## Execution without compilation

```
runhaskell ./args first second w00t "multi word arg"
```

## Compilation && Execution

```
ghc --make ./args.hs; ./args first second w00t "multi word arg" 
```