####### Retos de la primera sesión de "Programación y estadística con R"

################ RETO 1: Lectura y escritura de datos

# 1. Leer el archivo "netflix_titles.csv" desde Github
# (https://raw.githubusercontent.com/ecoronadoj/Sesion_1/main/Data/netflix_titles.csv), 
# almacenarlo en un df llamado netflix
netflix <- read.csv("https://raw.githubusercontent.com/ecoronadoj/Sesion_1/main/Data/netflix_titles.csv")

# 2. Obtener la dimensión y el tipo de objeto que se obtiene
dim(netflix); typeof(netflix)

# 3. Obtener los títulos que se estrenaron después del 2015. Almacenar este df en una variable llamada net.2015
  # Primera opción con dplyr
library(dplyr)
net.2015 <- filter(netflix, release_year > 2015)

  # Segunda opción
net.2015.1 <- netflix[netflix$release_year>2015,]

# 4. Escribir los resultados en un archivo .csv llamado res.netflix.csv
write.csv(net.2015, file = "resNetflix.csv")

################ RETO 2: LOOPS

# 1. Genera un vector de 44 entradas (aleatorias) llamado ran
ran <- rnorm(44)

# 2. Escribe un loop que eleve al cubo las primeras 15 entradas y les sume 12
ransq <- 0
for(i in 1:15) {
  ransq[i]<-((ran[i]**3) + 12)
  print(ransq[i])
}

# 3. Guarda el resultado en un data frame, donde la primera columna sea el 
# número aleatorio y la segunda el resultado, nómbralo df.al
df.al <- data.frame(Aleatorio = ran[1:15], Resultado = ransq)



# 4. Escribe el pseudocódigo del loop anterior
#for(iteraciones){
 ##asignación y operaciones
#}

############## Reto 3: operaciones con DataFrames

# 1. Almacenalo en un data frame que se llame amazon.best
amazon.best <- read.csv("https://raw.githubusercontent.com/beduExpert/Programacion-con-R-Santander/master/Sesion-01/Data/bestsellers%20with%20categories.csv")

# 2. Calcula el data frame transpuesto, asígnale el nombre de tAmazon y conviértelo en un data frame
tAmazon <- data.frame(t(amazon.best[-1]))

# 3. Usa el nombre de los libros como el nombre de las columnas
colnames(tAmazon) <- amazon.best[, 1]
# 4. ¿Cúal es el libro de menor y mayor precio?
maxPriceBook <- amazon.best[which.max(amazon.best$Price),]
minPriceBook <- amazon.best[which.min(amazon.best$Price),]
maxPrice <- max(amazon.best$Price)
minPrice <- min(amazon.best$Price)
