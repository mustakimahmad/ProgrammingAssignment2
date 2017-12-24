## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    # Define function to set the value of the matrix
    set <- function(y) {
        x <<- y    # Set value
        m <<- NULL # Clear cache
    }
        
    # Define function value of the matrix
    get <- function() x
    # Define function to set the inverse
    setInverse <- function(inverse) m <<- inverse
    # Define function to get the inverse
    getInverse <- function() m
    
    # Return a list with the above four functions
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
