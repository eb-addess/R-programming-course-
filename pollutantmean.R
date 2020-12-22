pollutantmean <- function(directory, pollutant, id = 1:332){
        our_files <- list.files(directory, full.names = TRUE)
        our_data_frame <- data.frame()
        for(i in id){
                our_data_frame <- rbind(our_data_frame,read.csv(our_files[i]))
        }
        our_pollutant <- our_data_frame[,pollutant]
        mean(our_pollutant,na.rm = TRUE)
}