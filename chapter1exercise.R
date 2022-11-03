out=NULL
sdvals=seq(0,10,0.1)

for(i in 1:length(sdvals)){
  d=rnorm(500,20,sd=sdvals[i])
  d=d[which(d>0)]
  out[i]=exp(mean(log(d)))
}

plot(sdvals,out,las=1,xlab='SD',ylab='Geometric mean')
abline(h=20)


#**函数：** hist(x, breaks = "Sturges", freq = NULL, probability = !freq,
#* include.lowest = TRUE, right = TRUE, density = NULL, angle = 45, col = "lightgray", border = NULL, main = paste("Histogram of" , xname), xlim = range(breaks), ylim = NULL, xlab = xname, ylab, axes = TRUE, plot = TRUE, 
#* labels = FALSE, nclass = NULL, 
#* warn.unused = TRUE, ...) 
#* #参数： x：数据一个向量，用来绘制直方图的数据） main：直方图标题。（不多谈）
#* 
x=rnorm(100,5,1)
hist(x,las=1,main='')

set.seed(1)
x=rnorm(50,10,2)
se_x=sqrt(var(x)/length(x))

out=NULL
for (i in 1:1000){
  sample=sample(x,replace=TRUE)
  out[i]=mean(sample)
}
hist(out,las=1,main='')
sd(out)
se_x
quantile(out,c(0.025,0.975))
mean(x)-1.96*se_x
mean(x)+1.96*se_x


#exercise1
set.seed(1)
x=rnorm(1000,10,2)
se_x=sqrt(var(x)/length(x))
mean(x)+1.96*se_x



#exercise2
cv=NULL
sd_log=NULL
for(i in 1:1000){
  x=rnorm(1000,10,2)
  sampling = sample(x,500,replace=TRUE)
  cv[i]=sqrt(var(sampling))/length(sampling)
  sd=sqrt(var(sampling)/length(sampling))
  sd_log[i]=log(sd)
}
plot(cv,sd_log)
fit_line<-lm(sd_log ~ cv)
abline(fit_line)