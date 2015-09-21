Data Products Courserwork: MPG Predictor
========================================================
author: DrMuhsin
date: 21/9/2015

Executive Summary
========================================================

Overview

The program utilized the 1974 Motor Trend US Magazine Dataset (mtcars) to predict car's mpg.

The prediction use multivariate linear regression method.


```r
quote(lm(formula, data, subset, weights, na.action,
   method = "qr", model = TRUE, x = FALSE, y = FALSE, qr = TRUE,
   singular.ok = TRUE, contrasts = NULL, offset))
```

```
lm(formula, data, subset, weights, na.action, method = "qr", 
    model = TRUE, x = FALSE, y = FALSE, qr = TRUE, singular.ok = TRUE, 
    contrasts = NULL, offset)
```

By using the side bar to set the number of cylinders, car weight and displacement. The user can obtain the predicted MPG by pressing on the 'Calculate MPG?' button.


Motor Trend Car Road Tests
========================================================

The dataset consists of a data frame with 32 observations on 11 variables.

First 3 observations.


```r
head(mtcars,3)
```

```
               mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4     21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag 21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710    22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
```

Multivariate Model
========================================================
Building the predictor model:

```r
mfit = lm(mpg ~ wt + disp + cyl, data=mtcars)
summary(mfit$coefficients)
```

```
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-3.6360 -2.2480 -0.8887  8.9240 10.2800 41.1100 
```

Predict the MPG
========================================================
Use predict function. Feed the build model, and user input. Example: Number of cylinder = 4, weight = 1.5 and displacement = 200.

```r
newcar <- data.frame(cyl=4,wt=1.5, disp=200)
predict(mfit, newcar)[[1]]
```

```
[1] 30.00897
```
This value will be show at the shinyapps after user submit the input.

