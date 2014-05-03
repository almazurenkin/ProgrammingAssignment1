corr <- function(directory, threshold = 0) {
    result <- vector()
    for (location in 1:332) {
        data <- read.csv(paste(directory, "/", sprintf("%03i", location), ".csv", sep = ""))
        clean_data <- data[complete.cases(data), ]
        if (nrow(clean_data) > threshold) {
            result <- c(result, cor(clean_data$sulfate, clean_data$nitrate, ))
        }
    }
    result;
}

