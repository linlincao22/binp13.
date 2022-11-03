weighted_sum<-function(v,w){
  result<-NULL
  for (i in 1:length(v)){
     result[i]<- v[i]*w[i]
  }
  cat(length(result))
  sum<-0
  for(j in 1:length(result)){
    
    sum<-sum+result[j]
     }
  cat(sum)
}


