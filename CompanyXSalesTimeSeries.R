# Input data row-by-row (13 periods per year for 4 years = 52 observations)
sales_data <- c(
  153, 189, 221, 215, 302, 223, 201, 173, 121, 106,  86,  87, 108, # 1995
  133, 177, 241, 228, 283, 255, 238, 164, 128, 108,  87,  74,  95, # 1996
  145, 200, 187, 201, 292, 220, 233, 172, 119,  81,  65,  76,  74, # 1997
  111, 170, 243, 178, 248, 202, 163, 139, 120,  96,  95,  53,  94  # 1998
)

sales_ts <- ts(sales_data, start = c(1995, 1), frequency = 13)

plot(sales_ts, type = "o", col = "blue", ylab = "Coded Sales", 
     xlab = "Year", main = "Company X Sales (1995-1998)")

'''
There is a clear, regular, 13-period annual seasonailty. Peak sales consistently
occur at period 5 and and the lowest sales occur at periods 11 and 12. 

There is a slight downward trend over the 4-year period. The annual-peak sales
and the year-end low sales appear to steadily decrease from 1995 and 1998. 
'''
