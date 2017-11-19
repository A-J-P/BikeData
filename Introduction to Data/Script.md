Untitled
================
AJ
November 18, 2017

*Read Data into R*

``` r
BikeData <- read.csv("~/UTexasDA/BikeData/BikeData.csv")
```

*Summary of the Data*

``` r
summary(BikeData)
```

    ##     user_id         age        gender    student          employed     
    ##  Min.   :  1   Min.   :22.00   F:31   Min.   :0.0000   Min.   :0.0000  
    ##  1st Qu.: 31   1st Qu.:29.00   M:90   1st Qu.:0.0000   1st Qu.:1.0000  
    ##  Median : 61   Median :36.00          Median :0.0000   Median :1.0000  
    ##  Mean   : 61   Mean   :36.45          Mean   :0.1157   Mean   :0.9008  
    ##  3rd Qu.: 91   3rd Qu.:42.00          3rd Qu.:0.0000   3rd Qu.:1.0000  
    ##  Max.   :121   Max.   :63.00          Max.   :1.0000   Max.   :1.0000  
    ##                     cyc_freq     distance           time      
    ##  Daily                  :47   Min.   : 0.520   Min.   : 3.00  
    ##  Less than once a month : 2   1st Qu.: 3.220   1st Qu.:15.00  
    ##  Several times per month:14   Median : 5.590   Median :24.00  
    ##  Several times per week :58   Mean   : 5.991   Mean   :25.73  
    ##                               3rd Qu.: 8.310   3rd Qu.:37.00  
    ##                               Max.   :13.950   Max.   :55.00  
    ##      speed      
    ##  Min.   : 4.29  
    ##  1st Qu.:11.87  
    ##  Median :13.60  
    ##  Mean   :14.05  
    ##  3rd Qu.:15.65  
    ##  Max.   :30.84

.
