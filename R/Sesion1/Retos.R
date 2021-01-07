data.url <- read.csv("https://raw.githubusercontent.com/beduExpert/Programacion-con-R-Santander/master/Sesion-01/Data/netflix_titles.csv")
dim(data.url)
class(data.url)
typeof(data.url)
net.2015 <- data.url[data.url$release_year>2015,]
net.2015
write.csv(net.2015, "res.netflix.csv")
summary(data.url)
names(data.url)

ran <- rnorm(44)
ransq <- 0
for(i in 1:15) {
  ransq[i]<-(ran[i]**3) + 12
  print(ransq[i])
}

(df.al <- data.frame(aleatorio = ran[1:15], resultado = ransq))
