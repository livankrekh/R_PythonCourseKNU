
pmean <- function(pollutant, directory="~/R_PythonCourseKNU/specdata", id=1:332) {
	all <- c()
	for (i in id) {
		tmp <- read.csv( paste0(directory, '/', formatC(i, width=3, flag="0"), ".csv") )
		if (length(all) == 0) {
			all <- tmp[, pollutant]
		} else {
			all <- c(all, tmp[, pollutant])
		}
	}
	mean(all, na.rm = TRUE)
}

complete <- function(id=1:332, directory="~/R_PythonCourseKNU/specdata") {
	completed_count = c()
	for (i in id) {
		tmp <- read.csv( paste0(directory, '/', formatC(i, width=3, flag="0"), ".csv") )
		tmp2 <- complete.cases(tmp)
		if (length(completed_count) == 0) {
			completed_count <- length(tmp2[tmp2 == TRUE])
		} else {
			completed_count <- c(completed_count, length(tmp2[tmp2 == TRUE]))
		}
	}
	data.frame(id=id, nobs=completed_count)
}

corr <- function(treshold, directory="~/R_PythonCourseKNU/specdata") {
	result_vector <- c()
	for (i in 1:332) {
		tmp <- read.csv( paste0(directory, '/', formatC(i, width=3, flag="0"), ".csv") )
		tmp2 <- complete.cases(tmp)
		if (length(tmp2[tmp2 == TRUE]) > treshold) {
			result_vector <- c(result_vector, cor(tmp[tmp2, "sulfate"], tmp[tmp2, "nitrate"]))
		}
	}
	result_vector
}
