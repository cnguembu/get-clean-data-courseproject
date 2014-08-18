#################################### Step1 ########################################

  x <- list.files(pattern="test",recursive=TRUE)
  y <- list.files(pattern="train",recursive=TRUE)
  test_files=cbind(read.table(x[11], sep = ""), read.table(x[12], sep = ""), read.table(x[10], sep = ""))
  train_files=cbind(read.table(y[11], sep = ""), read.table(y[12], sep = ""), read.table(y[10], sep = ""))
  dataset <- rbind(test_files, train_files)
  
  #################################### Step2 ########################################
  
  z <- list.files( pattern="features.txt", recursive=TRUE)
  feature_files <- read.table(z, sep="")  
  d1 <- grep("mean", feature_files$V2); d2 <- grep("std", feature_files$V2)
  extract <- dataset[, c(d1,d2)]
  
  #################################### Step3 ########################################
  
  w <- list.files( pattern="activity_labels.txt", recursive=TRUE)
  activity_files <- read.table(w, sep="")
  for(i in 1:6){
    v <- which(dataset[, 562]==i)
    dataset[, 562]=replace(dataset[, 562], v, as.character(activity_files[i, 2]))  
  }  
  
  #################################### Step4 ########################################
  
  colnames(dataset)=c(as.character(feature_files$V2), "activities", "subject")
  
  #################################### Step5 ########################################
  
  s1=split(dataset, dataset$activities)
  s2=split(dataset, dataset$subject)
  average_activities=sapply(s1, function(x) colMeans(x[, -c(562, 563)]))
  average_subject=sapply(s2, function(x) colMeans(x[, -c(562, 563)]))
  average=cbind(average_activities, average_subject)
  write.table(average,"tidy_dataset.txt", row.names = FALSE)
  