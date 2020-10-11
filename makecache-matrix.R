makeCacheMatrix <- function(M = matrix()) {
  invM <- NULL
  set <- function(x) {
    M <<- x
    invM <<- NULL
  }
  get <- function() M
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() invM
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}