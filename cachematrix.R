## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(matrix = matrix()) {
       inv <- NULL
       set <- function(new_matrix) {
              matrix <<- new_matrix
              inv <<- NULL
       }
       get <- function() {
              matrix
       }
       setInverse <- function(inverse) {
              inv <<- inverse
       }
       
       getInverse <- function() {
              inv
       }
       
       list(set=set,get=get,
            setInverse=setInverse,
            getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(matrix, ...) {
        ## Return a matrix that is the inverse of 'x'
       inv <- matrix$getInverse()
       if(!is.null(inv))
       {
              message("Getting Cached Data")
              return(inv)
       }
       new_data <- matrix$get()
       inv <- solve(new_data)
       matrix$setInverse(inv)
       inv
}
