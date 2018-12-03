### 1. Create matrix "mat" with random values (by rnorm(50))

* Output
```R
> mat <- matrix(rnorm(50),nrow=10,ncol=5)
> mat
            [,1]       [,2]        [,3]        [,4]       [,5]
 [1,]  0.3101414  0.9514985  0.63506033 -0.12443499 -1.5772180
 [2,]  1.7025706 -1.1131230  1.63464429  1.46674459 -0.7972761
 [3,] -0.4433848  0.6169665 -1.80832758  0.67392868 -1.0962368
 [4,] -1.1985971  0.5134937 -0.21388595  1.95642526  0.3083087
 [5,] -0.3073809  0.3694591  0.07036614 -0.26904101  0.3447951
 [6,]  0.6210542  1.7238941  0.54970767 -1.24455152  1.5396481
 [7,]  0.1819022 -0.2061446 -0.69682355 -0.39570292 -0.3295142
 [8,]  1.3184009 -1.3141951  0.39056594  0.09739665  0.9483894
 [9,] -0.2989093  0.0634741  0.38141126 -0.23838695 -0.4792556
[10,] -1.6482217 -0.2319775 -0.01237277 -0.41182796 -1.5148868
```

### 2. Calculate max value for each column

* Output
```R
> apply(mat, 2, max)
[1] 1.702571 1.723894 1.634644 1.956425 1.539648
```

### 3. Calculate mean value for each column

* Output
```R
> apply(mat, 2, mean)
[1]  0.02375754  0.13733459  0.09303458  0.15105498 -0.26532462
```

### 4. Calculate min value for each row

* Output
```R
> apply(mat, 1, min)
 [1] -1.5772180 -1.1131230 -1.8083276 -1.1985971 -0.3073809 -1.2445515 -0.6968235
 [8] -1.3141951 -0.4792556 -1.6482217
```

### 5. Sort every column of table

* Output
```R
> apply(mat, 2, sort)
            [,1]       [,2]        [,3]        [,4]       [,5]
 [1,] -1.6482217 -1.3141951 -1.80832758 -1.24455152 -1.5772180
 [2,] -1.1985971 -1.1131230 -0.69682355 -0.41182796 -1.5148868
 [3,] -0.4433848 -0.2319775 -0.21388595 -0.39570292 -1.0962368
 [4,] -0.3073809 -0.2061446 -0.01237277 -0.26904101 -0.7972761
 [5,] -0.2989093  0.0634741  0.07036614 -0.23838695 -0.4792556
 [6,]  0.1819022  0.3694591  0.38141126 -0.12443499 -0.3295142
 [7,]  0.3101414  0.5134937  0.39056594  0.09739665  0.3083087
 [8,]  0.6210542  0.6169665  0.54970767  0.67392868  0.3447951
 [9,]  1.3184009  0.9514985  0.63506033  1.46674459  0.9483894
[10,]  1.7025706  1.7238941  1.63464429  1.95642526  1.5396481
```

### 6. Calculate count of values that < 0 for every column, using own function

* Output
```R
> apply( mat, 2, function(elem) { length(elem[elem < 0]) } )
[1] 5 4 4 6 6
```

### 7. Print boolean vector, where TRUE in case, when column has element > 2, in other case - FALSE

* Output
```R
> apply( mat, 2, function(elem) { length(elem[elem > 2]) != 0 } )
[1] FALSE FALSE FALSE FALSE FALSE
```

### 8. Create list by command list1 <- list(observationA = c(1:5, 7:3), observationB = matrix(1:6, nrow=2)). Find out sum value by lapply

* Output
```R
> list1 <- list(observationA = c(1:5, 7:3), observationB = matrix(1:6, nrow=2))
> list1
$observationA
 [1] 1 2 3 4 5 7 6 5 4 3

$observationB
     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6

> lapply(list1, sum)
$observationA
[1] 40

$observationB
[1] 21
```

### 9. For each list1 element find out min and max values

* Output
```R
> lapply(list1, range)
$observationA
[1] 1 7

$observationB
[1] 1 6

> sapply(list1, range)
     observationA observationB
[1,]            1            1
[2,]            7            6
```

### 10. For embedded data frame InsectSprays find out mean value of 'count' for each 'spray'

* Output
```R
> avg <- split(InsectSprays, InsectSprays$spray)
> sapply(avg, function(k) mean(k$count, na.rm=TRUE))
        A         B         C         D         E         F 
14.500000 15.333333  2.083333  4.916667  3.500000 16.666667 
```
