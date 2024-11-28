#handling NA values in vectors

order_detail <-c (10,20,30,NA,50,60)
order_detail
names(order_detail) <-c ("Mon" , "Tue" , "Wed" , "Thu", "Fri", "Sat")
order_detail
order_detail + 5 #Any operation performed on vector, will be applied to all the values of vector

#to add two vectors

new_order <- c(5,10)
order_detail + new_order
update_order <- order_detail+new_order
update_order

#creating subset of vector

firsttwo<-order_detail[1:2]
firsttwo
l <-length(order_detail)
l

v1<-order_detail[(l-1):l]
v1
v2<-order_detail[(l-1):2]
v2
v3<-order_detail[l:1]
v3
v4 <- order_detail[(l-2):l]
v4

#Extract all the values below 30
order_detail<30
order_detail[order_detail<30]

#to omit NA value from the vector 
na.omit(order_detail[order_detail <30])

#to find the order details that are multiple of 3

(order_detail %% 3)==0
order_detail[(order_detail %% 3)==0]
na.omit(order_detail[(order_detail %% 3)==0])

sum(order_detail) #Returns NA because there is an NA value in the order detail vector 

#Use na.rm to remove the NA value
sum(order_detail , na.rm =T)

mean(order_detail , na.rm =T)
max(order_detail , na.rm = T)
min(order_detail , na.rm = T)
sd(order_detail , na.rm = T)
sqrt(order_detail) # returns the square the root

##-----------Matrix in R-------------------##

# We use function matrix() to create a matrix

v <- 20:30
v
matrix(v)

mat1<-matrix(0,3,3)
mat1
mat2<-matrix(1:9,3,3)
mat2

mat3<-matrix(1:9,nrow=3,byrow=T)
mat3
mat3<-matrix(1:9,3,3,byrow=T) 
mat3

#creating matrix from vectors

Stock1 <- c(450,451,452,445,468)
Stock2 <- c(230,231,232,236,228)
Stocks <- c(Stock1,Stock2) #Merge both the vectors
Stocks
Stock.matrix <- matrix(Stocks,byrow=TRUE ,nrow =2)
Stock.matrix

#Naming a matrix using colnames() and rownames()

days <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')
st.names <- c('stock1','stock2')

colnames(Stock.matrix) <- days
rownames(Stock.matrix) <- st.names

Stock.matrix

#Functions associated with matrix

nrow(mat3) #returns no. of rows
ncol(mat3) #returns no. of columns
dim(mat3) #returns no. of rows and columns
rownames(Stock.matrix) #returns row names
colnames(Stock.matrix) #returns row and column names
dimnames(Stock.matrix) #returns row and column names
