
### Assigment 2 - Inverse of a Matrix

# 1) MakeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
makeMatrix = function(x = numeric()) {
  m = NULL
set = function(y) {
  x <<- y #sets the value of the matrix
  m <<- NULL
}
get = function() x #gets the value of the matrix
setInverse = function(Inverse) m <<- Inverse #sets the inverse of the matrix
getInverse = function() m #gets the inverse of the matrix
list(set = set, get = get,
     setInverse = setInverse,
     getInverse = getInverse)
}


### 2) CacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheInverse = function(x, ...) {
  m = x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data = x$get()
  m = solve(data, ...) #solve is the name of the function that actually gets the inverse of the matrix
  x$setInverse(m)
  m
}

