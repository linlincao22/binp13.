Fibonacci_numbers<-function(n){
  result_v<-c(1,1)
  C_v<-NULL
  for(i in 3:n){
    result_v[i]=result_v[i-1]+result_v[i-2]
    
  
  }
  for(i in 1:n){
    C_v[i]<-((i+sqrt(5))/2)
  }
  cat(C_v)
  op<-par(mfrow=c(1,2))
  
  plot(1:length(result_v),result_v,type='l')
  plot(1:length(result_v),C_v,type='l')
  par(op)
  
}