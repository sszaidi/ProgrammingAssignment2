
+ # Function makeCacheMarix will create a matrix and will cache its inverse
+  makeCacheMatrix<-function(x=matrix()){
+	inv<-NULL ## initializing inv as null matrix that in the end will provide 
                 ## the inverse of the matrix
+     set<-function(y){   ## set function in defined
+		x<<-y         ## matrix in parent environment 
+		inv<<-NULL    ## if the matrix is new, will reasign 
                          ## inverse matrix to null
+	}
+	get<-function()x    ## will get the matrix 
+	setinverse<-function(inverse)inv<<-inverse  ## inverse matrix in parent enviroment
+	getinverse<-function()inv  ## call the values of inverse
+	list(set = set, get = get, setinverse=setinverse, getinverse = getinverse)
+ }
+     ## This function will compute the invese of a matric only if the inverse was 
      ## not calculated before 
+  cacheSolve<-function(x,...){ 
+	inv<-x$getinverse()
+	if(!is.(inv)){
+		message("getting cached data")
+		return(inv) }
+  data<-x$get()
+  inv<-inverse(data,...)
+  x$setinverse(inv)
+  inv
+  }
                             