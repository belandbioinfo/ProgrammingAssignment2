## The following R functions create a special object "Matrix" that 
## contains functions for curation of a cache. This cache contains
## the result of a matrix inversion if one has already been calculated 
## for that particular object, and if not it contains a function
## for inverting the matrix contained in the object.
##
## Author: Kevin Beland (belandbioinfo@gmail.com)

## This function creates a special "Matrix" Which is actually a list 
## with 4 elements, 2 "getter" functions for getting the value of the 
## matrix itself and the matrix inversion result, and 2 "setter" functions
## for setting the value of the matrix and setting its inversion. The function
## returns a special "Matrix" list of these functions.

makeCacheMatrix <- function(x = matrix()) {
        invertedMatrix <- NULL
        setMatrix <- function(newMatrix) {
            if (is.matrix(newMatrix)){
                x <<- newMatrix
                invertedMatrix <<- NULL
            }
            else {
               print("NEW MATRIX NOT SET, OBJECT PROVIDED IS NOT A MATRIX") 
            }
        }
        getMatrix <- function() x
        setInverted <- function(newInverted) invertedMatrix <<- newInverted
        getInverted <- function() invertedMatrix
        list(setMatrix = setMatrix, getMatrix = getMatrix,
             setInverted = setInverted,
             getInverted = getInverted)
}


## This function is designed to greedily solve a "Matrix" objects inversion by 
## first searching a cache to determine if the inversion has already been 
## calculated. This function returns the inversion of the supplied "Matrix" 
## object

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inversion <- x$getInverted()
    if(!is.null(inversion)) {
        message("Returning cached Inversion")
        return(inversion)
    }
    else {
        givenMatrix <- x$getMatrix()
        inversion <- solve(givenMatrix)
        x$setInverted(inversion)
        inversion
    }
}
