# data-science-and-machine-learning

## Major Types of Data

1. Numerical
    - Represents some sort of quantitivate measurement
        - Heights of people, page load times, stock prices

    - Dicrete Data
        - Integer based; often counts of some event
            - How many purcharse did a custom make in a year?
            - How many times did I flip heads?

    - Continuous Data
        - Has a infinite number of possible values
            - How much time did it take for a use to checkout out?
            - How much rain fell on a given way?

2. Categorical

3. Ordinal

***Links***
- https://blog.minitab.com/en/understanding-statistics/understanding-qualitative-quantitative-attribute-discrete-and-continuous-data-types

## Mean, Median and Mode

1. Mean
    - The average value
    - To calculate the mean, find the sum of all values, and divide the sum by the number of values
    - Can use `mean` method from `numpy`

        ```
        import numpy

        speed = [99,86,87,88,111,86,103,87,94,78,77,85,86]
        x = numpy.mean(speed)
        ```

2. Median
    - The mid point value (after you have sorted all the values)
    - It is important that the numbers are sorted before you can find the median
    - If there are two numbers in the middle, divide the sum of those numbers by two
    - Can use `median` method from `numpy`

        ```
        import numpy

        speed = [99,86,87,88,111,86,103,87,94,78,77,85,86]
        x = numpy.median(speed)
        ```


3. Mode
    - The value that appears the most number of times
    - Can use `stats` method from `scipy`

        ```
        from scipy import stats

        speed = [99,86,87,88,111,86,103,87,94,78,77,85,86]
        x = stats.mode(speed)
        ```

***Links***
- https://www.w3schools.com/python/python_ml_mean_median_mode.asp
- https://towardsdatascience.com/mean-median-mode-which-central-tendency-measure-to-use-when-9fb3ebbe3006
- https://medium.com/technology-nineleaps/basics-of-statistics-for-machine-learning-engineers-bf2887ac716c


## Variation and Standard Deviation

### Variation

- Variance is simply the average of the squared differences from the mean
- Ex: calculate variance for data set `(1, 4, 5, 4, 8)`
    - First find the mean (1+4+5+4+8)/4 = `4.4`
    - Fond the differences from the mean: `(-3.4, -0.4, 0.6, -0.4, 3.6)`
        - (1 - 4.4) = -3.4
        - (4 - 4.4) = -0.4
        - (5 - 4.4) = 0.6
        - (4 - 4.4) = -0.4
        - (8 - 4.4) = 3.6
    - Find the squared differences: `(11.56, 0.16, 0.36, 0.16, 12.96)`
        - (-3.4)*(-3.4) = 11.56
        - (-0.4)*(-0.4) = 0.16
        - (0.6)*(0.6) = 0.36
        - (-0.4)*(-0.4) = 0.16
        - (3.6)*(3.6) = 12.96
    - Find the average of the squared differences: `5.04`
        - (11.56 + 0.16 + 0.36 + 0.16 + 12.96)/5 = 5.04

### Standard Deviation

- is just the square root of the variance
- ex: find standard deviation of `5.04`
    - $\sqrt{5.04}$	= `2.24`
- this is usally as a way to identify outliers. Data points that lie more than one standard deviation from the mean can be considered unusual
- can talk about how extreme a data point is by taking about "how many sigmas" away from the mean it is

***Links***
- https://medium.com/technology-nineleaps/basics-of-statistics-for-machine-learning-engineers-ii-d25c5a5dac67



## Probalility Density Function && Probalility Mass Function

### Probalility Density Function (Hàm mật độ xác suất)

- give you the prrobability of data point falling within some given range of a given value

### Probalility Mass Function


## Percentiles and Moments

### Percentiles

### Moments

- The first moment is Mean
- The second moment is Variance
- The third moment is Skew: which measures how lopsided the distribution is
- The last moment is Kurtosis: which is the measure of how sharp is the peak of the graph

#### Skew

- Skewness = (Mean - Mode) / Standard Deviation
- Mode = 3(Median) - 2(Mean)
- Cases
    - No Skew: when Mean == Median == Mode
    - Positive Skew: when Mean > Median > Mode
    - Negative Skew: when Mean < Median < Mode

#### Kurtosis

- Types
    - Leptokurtic: Distributions greater than 3
    - MesoKurtic: A normal distribution has a kurtosis of 3
    - Platykurtic: less than 3

- Excess Kurtosis = Kurtosis - 3
    - Excess Kurtosis for Normal Distribution = 3–3 = 0
    - The lowest value of Excess Kurtosis is when Kurtosis is 1 = 1–3 = -2

    ![image](/images/kurtosis.png)

- The horizontal push or pull distortion of a normal distribution curve gets captured by the Skewness measure and the vertical push or pull distortion gets captured by the Kurtosis measure. Also, it is the impact of outliers that dominate the kurtosis effect which has its roots of proof sitting in the fourth-order moment-based formula.

***Links***
- https://medium.com/analytics-vidhya/moment-in-statistics-9407438c083b
- https://towardsdatascience.com/skewness-kurtosis-simplified-1338e094fc85
