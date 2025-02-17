```r
# Improved code that checks for the existence of columns before subsetting

data <- data.frame(a = 1:3, b = 4:6)
columns_to_select <- c("a", "c")

# Check if all columns exist
if (all(columns_to_select %in% names(data))) {
  subset_data <- data[, columns_to_select]
} else {
  missing_cols <- setdiff(columns_to_select, names(data))
  stop(paste("Error: Columns", paste(missing_cols, collapse = ", "), "not found in data frame."))
}
```