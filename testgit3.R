#count vector length
count_v1<-c(1,2,3,4,4)
length(count_v1)   #5
nchar(count_v1)    #11111,element number is been output one by one

#str split
fruit <- 'apple orange grape banana'
> strsplit(fruit,split=' ') #split str with ' ',blank space,ouput is list format
#in python we split string with the write format like below
#splited_str=fruit.split(),default delimiter is blank space and output format is list too
#is you wanna paste seperated list together you should use join(),write format is like ''.join(splited_str),and you can get 
[1] "apple"  "orange" "grape"  "banana"    #list结构
> fruitvec <- unlist(strsplit(fruit,split=' '))
> fruitvec