## The functions is to create a special "matrix" that can cache its inverse

## To create a special "matrix" object

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y 
    m<<-NULL
}
  get <-function() x 
  setmean<-function(slove) m<<-slove
  getmean<-function() m 
  list(set=set,get=get,
       setmean=setmean,
       getmean=getmean)
}
 
##The function is to compute the inverse of the special "matrix" and  cache m
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getmean() 
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  m<-mean(data, ...) 
  x$setslove(m)
  m
}
