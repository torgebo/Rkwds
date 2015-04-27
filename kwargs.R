#!/usr/bin/env Rscript

##This part initialized keywords from the command line.
##The eval line does the key word initialization.
##This is untouched whenever there is no such arguments.
##Should work on Windows.
##
##Consider: Arguments are ordered according to calling
##order. Change?
##

getKwargs <- function(kwds){
  args <- commandArgs(trailingOnly=TRUE)
  num.args <- floor(length(args)/2)
  every.second <- 2*seq(from=1, to=num.args,
                        length.out=num.args)-1
  kwargs.list = list()
  for(i in every.second){
    if(!(args[i] %in% kwds)) next
    kwargs.list[[substring(args[i],3)]] <- args[i+1]
  }
  kwargs.list
}







