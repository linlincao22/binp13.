is_palindrome<-function(x){
  x<-readline('pls enter a string:')
  b<-nchar(x)
  for (i in 1:b){
    if(b%%2==0 & substr(x,i,i)==substr(x,b+1-i,b+1-i)){
      return('TRUE')
    }
    else{
      return('FALSE')
    }
  }
}