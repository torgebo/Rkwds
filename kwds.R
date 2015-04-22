#!/usr/bin/env Rscript

##This part initialized keywords from the command line.
##The eval line does the key word initialization.
##This is untouched whenever there is no such arguments.
##Should work on Windows.
##
##TODO: Set this in function. It should then use some
##of the functionality from 'environments' to set the
##arguments in the global(?)/top scope

args <- commandArgs(trailingOnly=TRUE)
kwds <- c("--train")
every.second <- 2*seq(1:(length(args)/2),
                      length.out=floor(length(args)/2))-1
for(i in every.second){
  if(!(args[i] %in% kwds)) next
  eval(parse(text=paste0(substring(args[i],3), "<-", args[i+1])))
}

