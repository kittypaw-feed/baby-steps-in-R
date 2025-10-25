m <- matrix(c(1:6), 2, 3)
n <- matrix(c(7:12), 3, 2)

x <- m %*% n
print(m)
print(n)
print(x)

# Show detailed calculation
cat("Calculation steps:\n")
for (i in 1:nrow(m)) {
  for (j in 1:ncol(n)) {
    calc <- paste0("x[", i, ",", j, "] = ")
    terms <- c()
    for (k in 1:ncol(m)) {
      terms <- c(terms, paste0(m[i, k], "*", n[k, j]))
    }
    calc <- paste0(calc, paste(terms, collapse = " + "), " = ", x[i, j])
    cat(calc, "\n")
  }
}