plotmax<-function(n){
  a<-readline('pls enter an integer:')
  n=as.integer(a)
  v<-runif(n)
  v1<-c()
  v2<-c()
  plot(1:n,v,type='l',col='blue')
  max_pos<-NULL
  max_val<-NULL
  for(i in 1:n){
    if(i==1 && v[2]<v[1]){
      points(1,v[1],col='red',pch=4)
      max_pos<-c(max_pos,1)
      max_val<-c(max_val,v[1])
    }
    else if (i>1 && i<n){
      if(v[i]>v[i-1] && v[i]>v[i+1]){
        points(i,v[i],col='red',pch=4)
        max_pos<-c(max_pos,i)
        max_val<-c(max_val,v[i])
      }
    }
    else if(i==n && v[n]>v[n-1]){
        points(n,v[n],col='red',pch=4)
        max_pos<-c(max_pos,n)
        max_val<-c(max_val,v[n])
        
      }
  }
 outlist<-list('max_pos as follows:',max_pos,'max_val as follows:',max_val)
    return(outlist)
}
  

