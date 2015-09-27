# this function contains 4 functions:

# 1- set, 	set the value of the matrix
# 2- get, 	get the value of the matrix
# 3- setInv,	set the the inverse matrix
# 4- getInv,	get the the inverse matrix


makeCacheMatrix <- function(x = matrix()) {

      xinv <- NULL
      set <- function(y) {
	  x <<- y
	  xinv <<- NULL
      }

  get<-function() x

  setInv<-function(inv)  xinv<<-inv
  getInv<-function() xinv

  list(set=set, get=get, setInv=setInv, getInv=getInv)

}

## Return a matrix that is the inverse of 'x'		
cacheSolve <- function(x, ...) {
      	
	m <- x$getInv()
      	
	if(!is.null(m)) { 
	  message("getting cached data")
	  return(m) 
      }
      data <- x$get() 
      m <- solve(data,...) 
      x$setInv(m)
      m	 
  }