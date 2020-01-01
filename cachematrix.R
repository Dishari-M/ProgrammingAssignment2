## This program computes the inverse of a given matrix. Also,utilises the concept of caching.

## This function has the function definition of set and get for data .Also,has the
##function defintion of setinv and getinv.

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  get<-function()y
  set<- function(x){
  y<<-x
  inv<<-NULL
  }
  getinv<- function() inv
  setinv<- function(ele){inv<<-ele}
  list(set=set,get=get,getinv=getinv,setinv=setinv)

}


## This function checks if the inverse of matrix is cached or not. If not,then compute 
##the inverse of matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of the matrix
   inv<-x$getinv()
   if(!is.null(inv))
   {
     return(inv)
   }
   inv<-solve(x$get())
   x$setinv(inv)
   inv
}
