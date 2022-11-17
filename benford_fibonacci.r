#Benford's Law : Analysis of Fibonacci sequence of length n 
#                using Benford's Analysis

library(benford.analysis)

#Fibonacci function

fib<- function(n) {
  x = numeric(n)
  x[1:2] = c(1,1)
  for(i in 3:n) x[i] = x[i-1] + x[i-2]
  return(x)
}

data<- fib(100)

analysis <- benford(data, 
                   number.of.digits = 1, 
                   discrete = T, 
                   sign = "positive")
plot(analysis)
