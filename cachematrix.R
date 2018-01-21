## Put comments here that give an overall description of what your
## functions do

## Returns a list of function to set or get the inverse of the function 'x'

makeCacheMatrix <- function(x = matrix()) {
     m <- NULL
     set <- function(y) {
          x <<- y 
          m <<- NULL
     }
     get <- function() x
     setmean <- function(mean) {m <<- mean}
     getmean <- function() {m}
     list(set = set, get = get, setmean = setmean, getmean = getmean)
}


## Print the inverse of the matrix 'x',
## using the result from the previous function and the cached inverse if it exists

cacheSolve <- function(x, ...) {
     m <- x$getmean()
     if(!is.null(m)) 
     {
          message("getting cached data")
          return(m)     
     }
     else 
     {
          data <- x$get()
          m <- solve(data)
          x$setmean(m)
          m
     }
}
