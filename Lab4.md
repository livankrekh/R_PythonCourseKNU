### 1. Read hw1_data.csv and print column names

* Input
```R
> frame <- read.csv("~/R_PythonCourseKNU/hw1_data.csv")
```
* Output
```R
> print(names(frame))
[1] "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day"
```

### 2. Print first 6 rows of data frame

* Output
```R
> head(frame, 6)
  Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2
3    12     149 12.6   74     5   3
4    18     313 11.5   62     5   4
5    NA      NA 14.3   56     5   5
6    28      NA 14.9   66     5   6
> frame[1:6, ]
  Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2
3    12     149 12.6   74     5   3
4    18     313 11.5   62     5   4
5    NA      NA 14.3   56     5   5
6    28      NA 14.9   66     5   6
```

### 3. Print count of data frame rows

* Output
```R
> length(frame[, 1])
[1] 153
> nrow(frame)
[1] 153
```

### 4. Print last 10 rows of data frame

* Output

```R
> tail(frame, 10)
    Ozone Solar.R Wind Temp Month Day
144    13     238 12.6   64     9  21
145    23      14  9.2   71     9  22
146    36     139 10.3   81     9  23
147     7      49 10.3   69     9  24
148    14      20 16.6   63     9  25
149    30     193  6.9   70     9  26
150    NA     145 13.2   77     9  27
151    14     191 14.3   75     9  28
152    18     131  8.0   76     9  29
153    20     223 11.5   68     9  30
> frame[(nrow(frame) - 10):nrow(frame), ]
    Ozone Solar.R Wind Temp Month Day
143    16     201  8.0   82     9  20
144    13     238 12.6   64     9  21
145    23      14  9.2   71     9  22
146    36     139 10.3   81     9  23
147     7      49 10.3   69     9  24
148    14      20 16.6   63     9  25
149    30     193  6.9   70     9  26
150    NA     145 13.2   77     9  27
151    14     191 14.3   75     9  28
152    18     131  8.0   76     9  29
153    20     223 11.5   68     9  30
```

### 5. How much NA vals in "Ozone" column

* Output
```R
> length( frame[ is.na(frame[, "Ozone"]), "Ozone" ] )
[1] 37
```

### 6. Print mean of "Ozone" column without NA

* Output
```R
> mean( frame[, "Ozone"], na.rm = TRUE)
[1] 42.12931
```

### 7. Print mean of "Solar.R" column in data frame, where "Ozone" > 31 and "Temp" > 90

* Output
```R
> st <- subset(frame, Ozone > 31 & Temp > 90)
> st
    Ozone Solar.R Wind Temp Month Day
69     97     267  6.3   92     7   8
70     97     272  5.7   92     7   9
120    76     203  9.7   97     8  28
121   118     225  2.3   94     8  29
122    84     237  6.3   96     8  30
123    85     188  6.3   94     8  31
124    96     167  6.9   91     9   1
125    78     197  5.1   92     9   2
126    73     183  2.8   93     9   3
127    91     189  4.6   93     9   4
> mean( st[, "Solar.R"] )
[1] 212.8
```

### 8. Print mean value of "Temp" column in data frame select, where "Month" is Juny ("Month" == 6)

* Output
```R
> new_df <- subset(frame, Month == 6)
> new_df
   Ozone Solar.R Wind Temp Month Day
32    NA     286  8.6   78     6   1
33    NA     287  9.7   74     6   2
34    NA     242 16.1   67     6   3
35    NA     186  9.2   84     6   4
36    NA     220  8.6   85     6   5
37    NA     264 14.3   79     6   6
38    29     127  9.7   82     6   7
39    NA     273  6.9   87     6   8
40    71     291 13.8   90     6   9
41    39     323 11.5   87     6  10
42    NA     259 10.9   93     6  11
43    NA     250  9.2   92     6  12
44    23     148  8.0   82     6  13
45    NA     332 13.8   80     6  14
46    NA     322 11.5   79     6  15
47    21     191 14.9   77     6  16
48    37     284 20.7   72     6  17
49    20      37  9.2   65     6  18
50    12     120 11.5   73     6  19
51    13     137 10.3   76     6  20
52    NA     150  6.3   77     6  21
53    NA      59  1.7   76     6  22
54    NA      91  4.6   76     6  23
55    NA     250  6.3   76     6  24
56    NA     135  8.0   75     6  25
57    NA     127  8.0   78     6  26
58    NA      47 10.3   73     6  27
59    NA      98 11.5   80     6  28
60    NA      31 14.9   77     6  29
61    NA     138  8.0   83     6  30
> mean( new_df[, "Temp"] )
[1] 79.1
```

### 9. Print max value of "Ozone" column with NA from rows, where "Month" is May ("Month" == 5)

* Output

```R
> new_df <- subset(frame, Month == 5)
> new_df
   Ozone Solar.R Wind Temp Month Day
1     41     190  7.4   67     5   1
2     36     118  8.0   72     5   2
3     12     149 12.6   74     5   3
4     18     313 11.5   62     5   4
5     NA      NA 14.3   56     5   5
6     28      NA 14.9   66     5   6
7     23     299  8.6   65     5   7
8     19      99 13.8   59     5   8
9      8      19 20.1   61     5   9
10    NA     194  8.6   69     5  10
11     7      NA  6.9   74     5  11
12    16     256  9.7   69     5  12
13    11     290  9.2   66     5  13
14    14     274 10.9   68     5  14
15    18      65 13.2   58     5  15
16    14     334 11.5   64     5  16
17    34     307 12.0   66     5  17
18     6      78 18.4   57     5  18
19    30     322 11.5   68     5  19
20    11      44  9.7   62     5  20
21     1       8  9.7   59     5  21
22    11     320 16.6   73     5  22
23     4      25  9.7   61     5  23
24    32      92 12.0   61     5  24
25    NA      66 16.6   57     5  25
26    NA     266 14.9   58     5  26
27    NA      NA  8.0   57     5  27
28    23      13 12.0   67     5  28
29    45     252 14.9   81     5  29
30   115     223  5.7   79     5  30
31    37     279  7.4   76     5  31
> max( new_df[, "Ozone"] )
[1] NA
```
