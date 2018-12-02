### 1. Write a function add2(x, y) that return sum of two args

* Input
```R
> add2 <- function(x,y) {x + y}
```
* Output
```R
> add2(2,3)
[1] 5
```

### 2. Write a function above(x, n) that take two args (x - vector, n - number) and return all 'x' vals that greater than 'n'

* Input
```R
> above <- function(x, n=10) { x[x >= n] }
```
* Output
```R
> above( c(20, 30, 213, 34, 1, 2, 3, 4) )
[1]  20  30 213  34
> above( c(20, 30, 213, 34, 1, 2, 3, 4), 30)
[1]  30 213  34
> above( c(20, 30, 213, 34, 1, 2, 3, 4), n=40)
[1] 213
```

### 3. Create function my_ifelse(x, exp, n), where 'x' - vector, 'exp' - expression sign string (for example '>=', '<', '=='), n - number for expression. Function should make selection by expresiion sign (exp)

* Input
```R
my_ifelse <- function(x, exp, n) {
	if (exp == '>') {
		return (x[x > n])
	} else if (exp == '>=') {
		return (x[x >= n])
	} else if (exp == '<') {
		return (x[x < n])
	} else if (exp == '<=') {
		return (x[x <= n])
	} else if (exp == '==') {
		return (x[x == n])
	}

	x
}
```
* Output
```R
> my_ifelse(c(1,2,3,4,5,6,7,8), '>', 3)
[1] 4 5 6 7 8
> my_ifelse(c(1,2,3,4,5,6,7,8), '>=', 3)
[1] 3 4 5 6 7 8
> my_ifelse(c(1,2,3,4,5,6,7,8), '==', 8)
[1] 8
> my_ifelse(c(1,2,3,4,5,6,7,8), 'desf', 8)
[1] 1 2 3 4 5 6 7 8
```

### 4. Create a function columnmean(x, removeNA), where x - matrix or data frame, removeNA - parameter for deleting NA vals. Function should return mean of every column of matrix or frame

* Input
```R
columnmean <- function(x, removeNA = TRUE) {
	for (name in names(x)) {
		print( mean(x[, name], na.rm = removeNA) )
	}
}
```

* Output
```R
> ex <- data.frame(first = c(1,2,3,4,5,6,7,8,9), second = c(23,67,23,354,23,NA,34,NA, NA))
> columnmean(ex)
[1] 5
[1] 87.33333
> columnmean(ex, FALSE)
[1] 5
[1] NA
```
