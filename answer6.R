v1_length<-as.numeric(readline('pls enter v1 length:'))
v1<-scan(nmax=v1_length)
v2_length<-as.numeric(readline('pls enter v2 length:'))
v2<-scan(nmax=v2_length)
v3<-NULL
sorted_v1<-sort(v1)
sorted_v2<-sort(v2)
sorted_v3<-NULL
sorted_v3<-sort(c(v1,v2))
cat(sorted_v1,'\n',sorted_v2,'\n',sorted_v3)