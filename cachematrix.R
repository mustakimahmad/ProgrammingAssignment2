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
     # Get the current state of the inverse and see if it computed yet
    inv <- x$getinverse()
    
     # Simply return the computed inverse		
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    
     # Get the matrix itself
    data <- x$get()
    
     # Find the inverse
    inv <- solve(data)
    
     # Cache this result in the object
    x$setinverse(inv)
    
     # Return this new result
    inv
}

## Sample run:
## > x = rbind(c(1, -1/4), c(-1/4, 1))
## > m = makeCacheMatrix(x)
## > m$get()
##       [,1]  [,2]
## [1,]  1.00 -0.25
## [2,] -0.25  1.00

## No cache in the first run
## > cacheSolve(m)
##           [,1]      [,2]
## [1,] 1.0666667 0.2666667
## [2,] 0.2666667 1.0666667

## Retrieving from the cache in the second run
## > cacheSolve(m)
## getting cached data.
##           [,1]      [,2]
## [1,] 1.0666667 0.2666667
## [2,] 0.2666667 1.0666667
## > 
