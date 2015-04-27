#!/usr/bin/env Rscript
#Called with
##./test_some_kwds.R --train TRUE --test FALSE --help nohelp --stats short

source('../kwds.R')
source('./assert.R') #Testing facility
assert <- test("'Some keywords contained in arguments'")

kwds <- c("--test", "--train", "--help")
expected <- list(train="TRUE", test="FALSE", help="nohelp")
#args <- commandArgs(trailingOnly=TRUE)
kwargs <- getKwargs(kwds)
assert(kwargs, expected)
