## The functions 'makeCacheMatrix' and 'cacheSolve' work together to create
## and store a matrix and it's inverse matrix.

## The function 'makeCacheMatrix' takes the matrix provided, caches it, then
## resets a local variable 'inverse', representing the inverse of the matrix
## provided, to 'Null' so that previously stored inverses are not returned.

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    setmatrix <- function(y) {
        x <<- y
        inverse <<-NULL
    }
    getmatrix <- function() x
    setinverse <- function(solve) inverse <<- solve
    getinverse <- function() inverse
    list(setmatrix=setmatrix,getmatrix=getmatrix,
         setinverse=setinverse,getinverse=getinverse)
}

## The function 'cacheSolve' uses the 'Solve' function in R to create an 
## inverse of the matrix provided by the function 'makeCacheMatrix'

cacheSolve <- function(x, ...) {## Return a matrix that is the inverse of 'x'
    inverse <- x$getinverse()
        if(!is.null(inverse)) {
        message("getting cached data")
        return(m)
    }
    data <- x$getmatrix()
    inverse <- solve(data, ...)
    x$setinverse(m)
    inverse
}