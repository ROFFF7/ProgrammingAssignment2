## Put comments here that give an overall description of what your
## We can calculate the inverse matrix more simply.

## makeCacheMatrix can set the elements of the matrix, 
## get the elements of the matrix, set the elements of the matrix inverse
## and get the elements of the matrix inverse

makeCacheMatrix <- dunction(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
      setinverse = setinverse
      getinverse = getinverse)
  }

## cacheinverse calculates the inverse of the matrix. 

cacheinverse <- dunction(xm ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  matrix_to_invert <- x$get()
  inv <- solve(matric_to_invert, ...)
  x$setinverse(inv)
  inv
}
        ## Return a matrix that is the inverse of 'x'
