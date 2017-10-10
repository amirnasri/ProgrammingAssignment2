## The following functions make it possible to calculate the inverse of a 
## matrix and cache the result. If the inverse if already calculated, the result
## is returned from the cache.


## Make a special matrix that can store its inverse.

makeCacheMatrix <- function(x = matrix()) {
          inv <- NULL
          set <- function(y) {
                x <<- y
                inv <<- NULL
          }
          get <- function() x
          setInv <- function(i) inv <<- i
          getInv <- function() inv
          list(set = set, get = get,
             setInv = setInv,
             getInv = getInv)
}


## Return the inverse of matrix x. 
## If the inverse is already calculated, return it from the cashe.
## Otherwise, calculate the inverse, store it in the cache, and return the inverse.

cacheSolve <- function(x, ...) {
          inv <- x$getInv()
          if (!is.null(inv)) {
               message("returning cached data.")
               return(inv)
          }
          data <- x$get()
          inv <- solve(data)
          x$setInv(inv)
          inv
}
