## Put comments here that give an overall description of what your
## functions do

<<<<<<< HEAD
## makeCacheMatrix: This function creates a special "matrix" object that 
## can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  minv <- NULL
  set <- function(y) {
    x <<- y
    minv <<- NULL
  }
  get <- function() x
  setMInv <- function(minverse) minv <<- minverse
  getMInv <- function() minv
  list(set = set, get = get,
       setMInv = setMInv,
       getMInv = getMInv)
}

## cacheSolve: This function computes the inverse of the special "matrix" returned 
## by makeCacheMatrix above. If the inverse has already been calculated (and the matrix 
## has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    minv <- x$getMInv()
    if(!is.null(minv)) {
        message("getting cached data")
        return(minv)
    }
    data <- x$get()
    minv <- solve(data, ...)
    x$setMInv(minv)
    minv
=======
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
}
