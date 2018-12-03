### 1. Write a function "pmean" that should count mean value of sulfate or nitrate. Arguments: 1) pollutant - type of pollution, 2) directory - path to directory with csv data files, 3) id - vector of monitors identifiers

* Input
```R
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
```

* Output
```R
> pmean("sulfate", id=1:10)
[1] 4.064128
> pmean("sulfate", id=55)
[1] 3.587319
> pmean("nitrate", id=32:80)
[1] 1.799417
> pmean("sulfate", id=55:90)
[1] 3.45065
```

### 2. Write a function "complete" that should print rows with completed cases of data frame from files. Arguments: 1) id - vector of monitors identifiers, 2) directory - path to directory with csv data files. Return value - data frame with id and count of completed rows

* Input
```R
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
```

* Output
```R
> complete(c(2, 4, 8, 10, 12))
  id nobs
1  2 1041
2  4  474
3  8  192
4 10  148
5 12   96
> complete(33:44)
   id nobs
1  33  466
2  34  165
3  35  509
4  36  495
5  37  497
6  38  491
7  39  734
8  40   21
9  41  227
10 42   60
11 43   74
12 44  283
> complete(50:60)
   id nobs
1  50  459
2  51  193
3  52  812
4  53  342
5  54  219
6  55  372
7  56  642
8  57  452
9  58  391
10 59  445
11 60  448
```

### 3. Write a function "corr", which should calculate correlation between sulfates and nitrates in data frame, where count of completed cases rows bigger than "treshold" value. Return value: vector with correlation values

* Input
```R
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
```

* Output
```R
> cr <- corr(150)
> head(cr); summary(cr)
[1] -0.01895754 -0.14051254 -0.04389737 -0.06815956 -0.12350667 -0.07588814
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.21057 -0.04999  0.09463  0.12525  0.26844  0.76313 

> cr <- corr(400)
> head(cr); summary(cr)
[1] -0.01895754 -0.04389737 -0.06815956 -0.07588814  0.76312884 -0.15782860
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.17623 -0.03109  0.10021  0.13969  0.26849  0.76313

> cr <- corr(85)
> head(cr); summary(cr)
[1] -0.22255256 -0.01895754 -0.14051254 -0.04389737 -0.06815956 -0.12350667
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.28827 -0.05549  0.09034  0.11786  0.26597  0.76313
```
