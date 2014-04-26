## Put comments here that give an overall description of what your
## functions do
##
## The following R functions create a special object "Matrix" that 
## contains functions for curation of a cache. This cache contains
## the result of a matrix inversion if one has already been calculated 
## for that particular object, and if not it contains a function
## for inverting the matrix contained in the object.
##
## Author: Kevin Beland (belandbioinfo@gmail.com)

## Write a short comment describing this function
##
## This function creates a special "Matrix" Which is actually a list 
## with 4 elements, 2 "getter" functions for getting the value of the 
## matrix itself and the matrix inversion result, and 2 "setter" functions
## for setting the value of the matrix and setting its inversion. The function
## returns a special "Matrix" list of these functions.

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function
##
## This function is designed to greedily solve a "Matrix" objects inversion by 
## first searching a cache to determine if the inversion has already been 
## calculated. This function returns the inversion of the supplied "Matrix" 
## object

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
