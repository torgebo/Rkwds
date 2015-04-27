#Overview

A really simple function for getting keywords from command line.

Each keyword/value pair is stored in a (named) list where the keyword
name is the name hash-value of the associated value.

Each value is stored as is as a string, and in order to evaluate it
you will want to perform
	eval(as.name(kwargs[[key]]))

