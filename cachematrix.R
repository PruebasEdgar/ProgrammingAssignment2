## Programming Assignment 2: Lexical Scoping
## 
## This script contains two functions: makeCacheMatrix and cacheSolve. These function are used 
## to create a special matrix object and calculate its inverse. The functions allow to caching 
## both matrix and inverse in an environment that is different from the current environment.
##
## makeCacheMatrix creates a special matrix object and associates four functions to it: set, 
## get, setinverse and getinverse, where "inverse" is inverse of the matrix.
## Returned objetc: LIST CLASS

makeCacheMatrix <- function(x = matrix()) {
			inv_mat = NULL
			
			set <- function(m) {
				mat <<- m
				inv_mat <<- NULL
			}
			
			get <- function() mat
			set_inv <- function(inv) inv_mat <<- inv
			get_inv <- function() inv_mat
			list(set = set, get = get, set_inv = set_inv,
			     get_inv = get_inv) 	
			
}


## cacheSolve calculates the inverse of the matrix object created with makeCacheMatrix function.
## If the matrix has not changed and if its inverse has been calculated before, then 
## cacheSolve brings the inverse from the cache. If not, then will calculate it from scratch.
## Returned objetc: MATRIX CLASS

cacheSolve <- function(mat, ...) {
		
		inv_mat <- x$get_inv()

		if(!is.null(inv_mat)) {
			message(inverse cached!")
			return(inv_mat)
				
       		}
		data <- mat$get()
		inv_mat <- solve(data)
		mat$set_inv(inv_mat)
		inv_mat
}
