## First Lab
character <- "first string in R"
numeric <- 42.2
integer <- 42L
complex <- 42 + 42i
logical <- TRUE

all <- list(character, numeric, integer, complex, logical)
for (var in all) { print(typeof(var)) }

vector1 <- 5:75
vector2 <- c(3.14, 2.71, 0, 13)
vector3 <- rep(TRUE, 100)

m <- rbind(list(0.5, 1.3, 3.5), list(3.9, 131, 2.8), list(0, 2.2, 4.6), list(2, 7, 5.1))

humans <- factor(c(0, 1, 1, 1, 0, 2, 2, 0, 2, 1), levels = c(0, 1, 2))
levels(humans) <- c("baby", "child", "adult")

na_find <- is.na(c( 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11))

w_1 <- min(which(na_find == TRUE))
lw <- length(which(na_find == TRUE))

mark <- as.integer(runif(5, min=0L, max=100L))
frame <- data.frame(mark=mark, norm = mark >= 60)
names(frame) <- c("student mark", "enrolled")

## Second Lab

v <- rnorm(100)
head(v[20:length(v)], 10)

y <- data.frame(a = rnorm(100), b = 1:100, cc = sample(letters, 100, replace = TRUE))
tail(y, n=10)

z <- c(1, 2, 3, NA, 4, NA, 5, NA)
mean(z[!is.na(z)])
