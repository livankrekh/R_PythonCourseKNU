### 1. Create vector v with 100 elements by command v <- rnorm(100). For this vector print elements 1) 10th, 2) from 10th to 20th, 3) 10 elements from 20th, 4) elements, which greater then 0

Output
```R
> v <- rnorm(100)
> v[10]
[1] 0.04672617
> v[10:20]
 [1]  0.04672617 -0.23570656 -0.54288826 -0.43331032 -0.64947165  0.72675075
 [7]  1.15191175  0.99216037 -0.42951311  1.23830410 -0.27934628

> head(v[20:length(v)], 10)
 [1] -0.2793463  1.7579031  0.5607461 -0.4527840 -0.8320433 -1.1665705 -1.0655906
 [8] -1.5637821  1.1565370  0.8320471

v[v > 0]
 [1] 0.37739565 0.13333636 0.80418951 0.50360797 1.08576936 0.04672617 0.72675075
 [8] 1.15191175 0.99216037 1.23830410 1.75790309 0.56074609 1.15653700 0.83204713
[15] 0.26613736 2.44136463 0.25014132 0.61824329 0.35872890 0.24226348 0.36594112
[22] 0.24841265 0.06528818 0.01915639 0.25733838 0.66413570 1.10096910 0.14377148
[29] 1.25408311 0.77214219 0.99698686 1.25601882 0.64667439 1.29931230 0.00837096
[36] 0.59625902 0.11971764 1.45598840 0.22901959 0.99654393 0.78185918 0.04658030
[43] 0.57671878 1.62544730 1.67829721 0.02538287 0.02747534 1.05375086 0.33561721
[50] 0.49479577 0.13805271
```

### 2. Create data frame by command y <- data.frame(a = rnorm(100), b = 1:100, cc = sample(letters, 100, replace = TRUE)). Print 1) last 10 rows, 2) rows from 10th to 20th, 3) 10th elem of 'b' column, 4) 'cc' column by his name

Output
```R
> tail(y, n=10)
              a   b cc
91   0.92606273  91  z
92   0.03693769  92  p
93  -1.06620017  93  a
94  -0.23845635  94  i
95   1.49522344  95  h
96   1.17215855  96  d
97  -1.45770721  97  b
98   0.09505623  98  j
99   0.84766496  99  i
100 -1.62436453 100  e

> y[10:20, ]
              a  b cc
10 -0.003723534 10  d
11  1.511672283 11  b
12 -0.475698284 12  z
13  0.797916438 13  l
14 -0.974002561 14  j
15  0.689372698 15  d
16 -0.955839103 16  b
17 -1.231707058 17  r
18 -0.956891881 18  p
19 -0.869782874 19  z
20 -0.910680682 20  p

> y[10, "b"]
[1] 10

> y$cc
  [1] x b h n p g l j y d b z l j d b r p z p b e m a l g y s e m r l y s k d g w l m
 [41] r t e w y p n e a w d a y h e k l l n w b o r r r m z k w t n w m a s s e q o i
 [81] q v s j d k y u t y z p a i h d b j i e
Levels: a b d e g h i j k l m n o p q r s t u v w x y z

```

### 3. Create vector z with elements 1, 2, 3, NA, 4, NA, 5, NA. For this vector: 1) print all elements that not NA, 2) print mean value of all elements without NA vals and with NA vals

Output
```R
> z <- c(1, 2, 3, NA, 4, NA, 5, NA)
> z[!is.na(z)]
[1] 1 2 3 4 5

> mean(z[!is.na(z)])
[1] 3

> mean(z)
[1] NA
```
