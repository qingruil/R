load(file = 'translink.RData')
m=c()
for(i in 1:100){
  m=c(m,data[[i]]$text)
}
m
s = data[[321]]$text
q=gregexpr('#RiderAlert Update \\d+:\\d+[A-z]*[[:punct:]]? R?\\d+(/R?\\d+)* '
           ,s)
if(q[[1]]!=-1){
  y=regmatches(s,q)
  y=trimws(y[[1]])
  y=gsub(".*[:punct:]? ",'',y)
  y=trimws(y[[1]])
}
y
n=gregexpr('#RiderAlert R?\\d+(/R?\\d+/[A-Z])* ',s)
x = regmatches(s, n)
x = trimws(x[[1]])
x
