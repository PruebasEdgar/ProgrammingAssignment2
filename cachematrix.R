## Programming Assignment 2: Lexical Scoping
## 
## This script contains two functions: makeCacheMatrix and cacheSolve. These function are used 
## to create a special matrix object and calculate its inverse. The functions allow to caching ## both ## matrix and inverse in an environment that is different from the current environment.

## makeCacheMatrix creates a special matrix object and associates four functions to it: set, ## ## get, setinverse and getinverse, where "inverse" is inverse of the matrix.
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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
