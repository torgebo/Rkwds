#Contains the simplest possible test for our lists
#Using R built-in function 'identical'

##TODO: Get ahold of calling file name
##for printing automatically from environment
test <- function(testName){
  assert <- function(found, expected){
    RES <- identical(found, expected)
    if(RES) print(paste0("Test ", testName, " Passed"))
    else print(paste0("Test ", testName, " Failed"))
  }
}




