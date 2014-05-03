pollutantmean <- function(directory, pollutant, id = 1:332) {
    selection <- vector()
    for (location in id) {
        data <- read.csv(paste(directory, "/", sprintf("%03i", location), ".csv", sep = ""))
        selection <- c(selection, data[[pollutant]])
    }
    mean(selection[!is.na(selection)])
}

