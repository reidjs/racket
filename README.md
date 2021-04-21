# Designing Programs 
Functional programming practice using Racket (Lisp Syntax Like Scheme)
https://htdp.org/2003-09-26/Book/curriculum-Z-H-6.html


# Testing
## Making Unit Tests
From the file being tested, export the necessary functions:
```r
(provide function-name1 function-name2)
```

In the test file, import rackunit:
```r
(require rackunit
  "./check-guess.rkt")
```

## Running Tests
Run the unit tests the same way you run programs:
`racket check-guess-test.rkt`

If there are issues, it will output something like this:
```
--------------------
FAILURE
name:       check-equal?
location:   check-guess-test.rkt:6:0
actual:     'TooSmall
expected:   'Perfect
--------------------
```

## Syntax Highlighting
Use Magic Racket 

# to add racket and raco to your path
1. cd /etc/paths.d
2. sudo touch racket
3. sudo vim racket
4. add this to the file:
  - `PATH/TO/RACKET/bin`
5. do the same thing for `raco`