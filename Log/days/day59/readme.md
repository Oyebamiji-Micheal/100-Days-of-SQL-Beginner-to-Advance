# 100 Days of SQL Beginner to Advance
## Day 59: LAG AND LEAD 
 
*The LEAD() and LAG() functions are always used with the OVER() clause and are introduced in MySQL version 8.0. Hence, they cannot be used in previous versions.*

<br>

I learned the following about the `LEAD` and `LAG` functions

- The `LEAD` and `LAG` are window functions used to access the preceding and succeeding value of specified rows from the current row within its partition.

- The `LEAD` function allows us to look forward rows or succeeding rows to get/access the value of that row from the current row. It is a very useful method to calculate the difference between the current and subsequent rows within the same output.

- Below is the `LEAD` function syntax
    
    ```SQL
    LEAD(expression, offset , default_value) OVER (  
    PARTITION BY (expr)  
    ORDER BY (expr)
    )  
    ```

    **offset** contains the number of rows succeeding from the current row. If it is zero, the function evaluates the result for the current row. If we omit this, the function uses 1 by default.
    
    **default_value** is a value that will be returned when there is no subsequent row from the current row. If this is omitted, the function returns the `NULL` value.

- Below is the `LAG` function syntax
    
    ```SQL
    LAG(expression, offset , default_value) OVER (  
    PARTITION BY (expr)  
    ORDER BY (expr)
    )  
    ```

    **offset** contains the number of rows preceding from the current row. If it is zero, the function evaluates the result for the current row. If we omit this, the function uses 1 by default.

    **default_value** is a value that will be returned when there is no preceding row from the current row. If this is omitted, the function returns the `NULL` value.

- Both functions are used to discover pattern or trends in data.

### Reference Material
- [javaTpoint](https://www.javatpoint.com/)