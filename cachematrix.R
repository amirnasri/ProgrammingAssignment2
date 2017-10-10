## The following functions make it possible to calculate the inverse of a 
## matrix and cache the result. If the inverse if already calculated, the result
## is returned from the cache.


## Make a special matrix that can store its inverse.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInv <- function(inv) m <<- inv
        getInv <- function() m
        list(set = set, get = get,
             setInv = setInv,
             getInv = getInv)
}


## Return the inverse of matrix x. 
## If the inverse is already calculated, return it from the cashe.
## Otherwise, calculate the inverse, store it in the cache, and return the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
