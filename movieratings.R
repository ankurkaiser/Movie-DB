

#hello world#

my_data <- read.csv("movies-db.csv")

head(my_data, 5)

isGoodRating<-function(rating,threshold = 7.5){
  if(rating > threshold){
    return("Yes")
  }
  else{
    return("No")
  }
}


watchMovie <- function(moviename,my_threshold =8){
  rating <- my_data[my_data[,1] == moviename,"average_rating"]
  
  memo <- paste("The movie rating for", moviename, "is", rating)
  print(memo)
  
  return(isGoodRating(rating, threshold = my_threshold))
}

watchMovie("The Artist")
