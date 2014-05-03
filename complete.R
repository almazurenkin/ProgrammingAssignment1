complete <- function(directory, id = 1:332) {
    id_v <- vector()
    nobs_v <- vector()
    for (location in id) {
        data <- read.csv(paste(directory, "/", sprintf("%03i", location), ".csv", sep = ""))
        id_v <- c(id_v, location)
        nobs_v <- c(nobs_v, nrow(data[complete.cases(data), ]))
    }
    data.frame(id = id_v, nobs = nobs_v)
}

