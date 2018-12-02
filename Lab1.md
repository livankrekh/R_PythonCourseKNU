## 1. Create variables of atomaric types (character, numeric, integer, complex, logical)

Input
```R
> character <- "first string in R"
> numeric <- 42.2
> integer <- 42L
> complex <- 42 + 42i
> logical <- TRUE

> all <- list(character, numeric, integer, complex, logical)
> for (var in all) { print(typeof(var)) }
```
Output
```
[1] "character"
[1] "double"
[1] "integer"
[1] "complex"
[1] "logical"
```

## 2. Create vectors, which has a 1) sequence from 5 to 75, 2) has numbers 3.14, 2.71, 0, 13, 3) has 100 values of TRUE

Input
```R
> vector1 <- 5:75
> vector2 <- c(3.14, 2.71, 0, 13)
> vector3 <- rep(TRUE, 100)
```

Output
```R
> vector1
 [1]  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31
[28] 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58
[55] 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75

> vector2
[1]  3.14  2.71  0.00 13.00

> vector3
  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [17] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [33] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [49] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [65] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [81] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [97] TRUE TRUE TRUE TRUE
```

## 3. Create a matrix by cbind or rbind

Input
```R
> m <- rbind(list(0.5, 1.3, 3.5), list(3.9, 131, 2.8), list(0, 2.2, 4.6), list(2, 7, 5.1))
```
Output
```R
> m
     [,1] [,2] [,3]
[1,] 0.5  1.3  3.5
[2,] 3.9  131  2.8
[3,] 0    2.2  4.6
[4,] 2    7    5.1
```

## 4. Create list with including all atomaric types

Input
```R
> list("42", 42.0, 42L, TRUE, 42 + 42i)
```
Output
```
[[1]]
[1] "42"

[[2]]
[1] 42

[[3]]
[1] 42

[[4]]
[1] TRUE

[[5]]
[1] 42+42i
```

## 5. Create a factor with levels "baby", "child", "adult"
Input
```R
> factor(c("baby", "adult", "baby", "child", "baby"))
```
Output
```
[1] baby  adult baby  child baby 
Levels: adult baby child
```
### OR
Input
```R
> humans <- factor(c(0, 1, 1, 1, 0, 2, 2, 0, 2, 1), levels = c(0, 1, 2))
> levels(humans) <- c("baby", "child", "adult")
```
Output
```R
> humans
 [1] baby  child child child baby  adult adult baby  adult child
Levels: baby child adult
```

## 6. Find first index of NA occurence in vector  1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Count NA values
Input
```R
> na_find <- is.na(c( 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11))
```
Output
```R
> min(which(na_find == TRUE))
[1] 5
> length(which(na_find == TRUE))
[1] 3
```
# 7. Create a random data frame and print in console
Input
```R
> mark <- as.integer(runif(5, min=0L, max=100L))
> frame <- data.frame(mark=mark, norm= mark >= 60)
```
Output
```R
> frame
  mark  norm
1   82  TRUE
2   66  TRUE
3   79  TRUE
4   10 FALSE
5   72  TRUE
```
## 8. Change column names of data frame
Input
```R
> names(frame) <- c("student mark", "enrolled")
```
Output
```R
> frame
  student mark enrolled
1           82     TRUE
2           66     TRUE
3           79     TRUE
4           10    FALSE
5           72     TRUE
```