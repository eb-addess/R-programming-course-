complete <- function(directory, id = 1:332){
        #make a list of files in given directory
        list_files <- list.files(directory,full.names = TRUE)
        #initialize empty numeric vector
        nobs <- numeric()
        #use a loop to make vector of complete cases for each id
        for(i in id){
                file_n <- read.csv(list_files[i])
                complete_cases <- length(which(complete.cases(file_n)))
                nobs <- c(nobs, complete_cases)
        }
        #make data frame from id and nobs vectors
        complete_data <- data.frame(id, nobs)
        names(complete_data) <- c("id","nobs")
        complete_data
}