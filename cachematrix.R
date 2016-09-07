## Put comments here that give an overall description of what your
## functions do

## this function creates an special matrix

makeCacheMatrix <- function(x = matrix()) {
      i <- NULL
      set <- function(y) {
              x <<- y
              i <<- NULL
      }
      get <- function() x
      setinv <- function(inv) i <<- inv
      getinv <- function() i
      list(set = set, get = get,
            setinv = setinv,
            getinv = getinv)

}


## this function will retrieve an inverse of a matrix if it exists

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
      inv <- x$getinv()
      if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
      }
      data <- x$get()
      inv <- solve(data)
      x$setinv(inv)
      inv
}





