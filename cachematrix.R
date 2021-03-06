## Put comments here that give an overall description of what your
## functions do
Function creates a special matrix object that can cache its inverse.
get - retrieves the matrix
set - sets the matrix
setinverse - sets the inverse of the matrix
getinverse - gets the inverse of the matrix
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) m <<- solve
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function
The function computes the inverse of the matrix returned by makeCacheMatrix above.
If the inverse has already been calculated and the matrix has not been changed, then the 
cachesolve should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}