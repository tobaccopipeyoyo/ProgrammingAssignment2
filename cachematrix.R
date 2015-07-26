## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invrMatrix <- NULL
  get        <- function() x
  set        <- function(y){
    x          <<- y
    invrMatrix <<- NULL
  }#end of set()
  
  setInvr    <- function() {
    invrMatrix <<- solve(x)
  }#end of setInvr
  
  getInvr    <- function() invrMatrix
  
  list(get = get, set = set,
       setInvr = setInvr,
       getInvr = getInvr)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        cacheInvr <- x$getInvr()
        if(!is.null(cacheInvr)){
                    message("Getting cached data")
                    return(cacheInvr)
        }#end of if
        x$setInvr()
        invrMatrix  <- x$getInvr()
        invrMatrix
}
