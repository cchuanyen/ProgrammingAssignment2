## https://github.com/cchuanyen/ProgrammingAssignment2
## 1st commit SHA-1 hash identifier: 

## makeCacheMatrix function creates a special "matrix",
## which is really a list containing a function to
## - set the value of the matrix
## - set the value of the inverse of the matrix
## - get the value of the inverse of the matrix


makeCacheMatrix <- function(x = matrix()) {

  i <- NULL
  set <- function (y){
    x<<-y
    i<<-NULL
}

get <- function()x

setinverse <- function(inverse)i<<-inverse
getinverse <- function()i
list(
  set = set,
  get = get,
  setinverse = setinverse,
  getinverse = getinverse)
}
## Calculate the inverse of the special "matrix"the special "matrix"
## which created with the makeCacheMatrix function,
## Reusing cached result if it is available

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)){
          message("getting cached data")
          return(i)
        }
        data <- x$get()
        i <- solve(data,...)
        x$setinverse(i)
        i
}