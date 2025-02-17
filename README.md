# Silent Dropping of Non-Existent Columns in R Subsetting

This repository demonstrates a subtle but common error in R involving subsetting data frames using character vectors. When you attempt to select columns that do not exist, R silently drops these columns without producing an error or warning, which can lead to unexpected results and make debugging more challenging.  The provided example showcases this behavior and offers a solution.

## Bug Description

The code in `bug.R` tries to subset a data frame using a character vector containing a column name (`c`) that is not present in the data frame.  Rather than throwing an error, R silently returns a data frame without that column. This can be particularly problematic if you are unaware that the column is missing, as the code will continue to execute without indication of the issue.

## Solution

The `bugSolution.R` file presents a more robust approach by explicitly checking for column existence before attempting to subset the data.  This ensures that you are aware of any missing columns, allowing you to handle the situation accordingly (e.g., by throwing an error, skipping the selection, or using a default value).
