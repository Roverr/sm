# Simple (CLI) Math
Have you ever asked why you have to escape characters when you are using `expr` ? 
Not anymore.
Thanks to this [awesome library](https://github.com/Knetic/govaluate) you don't have to do that anymore.

It's frustrating when you just want a quick way to calculate something that is just a little bit more than a sum then you have to escape the whole expression.

# How to use

Build one of the following binaries for your platform:
* make windows
* make osx
* make linux


(Or download from [releases](https://github.com/Roverr/sm/releases), be aware that it's named `sm-osx` and `sm-linux`, but `sm.exe` for windows.)

Put the binary into your PATH.

The application takes all arguments you pass, then tries to evaluate using the Knetic's library.

You can pass any number of expressions, but be sure to use `"` if you are using space to separate logical expressions, or brackets like `()`.

Call the binary the following way:
* `sm "325 / (10**4)"` - Will result in `325 / (10*10*10*10)` getting evaluated
* `sm 325/55 23*54` - Will result in `325/55` and `23*54` getting evaluated
