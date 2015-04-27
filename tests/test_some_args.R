#!/usr/bin/env Rscript
#Called with
##./test_some_args.R --train TRUE --test FALSE --help nohelp

source('../kwargs.R')
source('./assert.R') #Testing facility
assert <- test("'Some arguments contained' in keywords")

kwds <- c("--train", "--test", "--help", "--stats")
expected <- list(train="TRUE", test="FALSE", help="nohelp")
kwargs <- getKwargs(kwds)
assert(kwargs, expected)
