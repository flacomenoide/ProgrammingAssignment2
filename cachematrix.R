## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y){
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setInverseMatrix <- function(newInverse) inverse <<- newInverse
  getInverseMatrix <- function() solve(x)
  
  list(set= set, get = get, setInverseMatrix = setInverseMatrix, getInverseMatrix = getInverseMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mi <- x$getInverseMatrix()
  if (!is.null(mi)){
    print("getting from cache inverse matrix")
    return(mi)
  }
  nm <- x$get()
  nmi <- solve(nm)
  x$setInverseMatrix(nmi)
  nmi
}