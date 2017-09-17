## We created these functions to cache the inverse of a matrix. 
## The functions below store the matrix and then invert it. Matrix inversion is usually a costly computation and there may be some 

## The first function creates a matrix that is a list containing a function to:
## sets and then gets the value of the matrix and then the inverse


makeCacheMatrix <- function(x = matrix()) {
+ i <- NULL
+ set <- function(y) {
+ x <<- y
+ i <<- NULL
+ }
+ get <- function () x
+ setinverse <- function(inverse) i <<- inverse
+ getinverse <- function() i
+ list(set = set,
+ get = get,
+ setinverse = setinverse,
+ getinverse = getinverse)
+ }



## The below function calculates the inverse of the above matrix

+ i <- x$getinverse()
+ if (!is.null(i)) {
+ message("getting cached data")
+ return(i)
+ }
+ data <- x$get()
+ i <- solve(data, ...)
+ x$setinverse(i)
+ i
+ }
> matrixA <- matrix(c(1, 2, 3, 4) ,2 ,2)
> CacheA <- makeCacheMatrix(matrixA)
> cacheSolve(CacheA)
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
> cacheSolve(CacheA)
getting cached data
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5


cacheSolve <- function(x, ...) {

}
