##@kwds should be a vector of "--" prefixed keywords
##to retain in list.
##
##Consider: Dropping kwds altogether and return full list
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







