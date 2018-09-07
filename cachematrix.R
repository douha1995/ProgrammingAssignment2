## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv<-null;
      set<-function(y){
        x<-y;
        inv<-null;
      }
      get<-function() x;
      setinverse<-function(inverse) inv<<-inverse;
      getinverse<-function() inv;
      list(set = set, get = get,
           setmean = setinverse,
           getmean = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     inv<-x$getinverse;
     if(!is.null(inv)){
       return(inv)
     }
     data<-x$get;
     inv<-solve(data);
     x$setinverse(inv);
     inv;
}
