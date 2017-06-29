#dyn.load('../src/C_Fib.so')
FibC <- function(n){
  ## Do some error checking
  if(n < 1) stop("n must be a positive integer!")

  ## create an R object to store result
  out=vector(length=n,mode="integer")

  .C("C_Fib",as.integer(n),as.integer(out))[[2]]
}

FibC_noCoerce = function(n){
 if(n < 1) stop("n must be a positive integer!")
  
 #out=vector(length=n,mode="integer")

 .C("C_Fib",as.integer(n),out=vector(length=n,mode="integer"))
}
