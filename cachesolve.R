cacheSolve <- function(M, ...) {
  inv <- M$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(invM)
  }
  mat <- M$get()
  invM <- solve(mat, ...)
  M$setInverse(invM)
  invM
}