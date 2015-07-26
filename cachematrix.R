## Put comments here that give an overall description of what your
## functions do

## Object for storing the matrix, its inverse
## Also encapsulated are object fucntions 
## for calculating, retrieving and storing
## data

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


## R function for retreiving the inverse
## of a matrix
## The matrix has to be an object created
## using the makeCaceMatrix object

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
