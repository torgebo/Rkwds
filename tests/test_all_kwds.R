#!/usr/bin/env Rscript
#Called with
##./test_all_kwds.R --train TRUE --test FALSE --help nohelp --stats short

source('../kwds.R')
source('./assert.R') #Testing facility
assert <- test("'All arguments contained in keywords and vice versa'")

kwds <- c("--train", "--test", "--help", "--stats")
expected <- list(train="TRUE", test="FALSE", help="nohelp", stats="short")
kwargs <- getKwargs(kwds)
assert(kwargs, expected)

