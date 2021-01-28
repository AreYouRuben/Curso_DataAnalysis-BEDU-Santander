#########################################   Reto 1

#install.packages("DBI")
#install.packages("RMySQL")
#install.packages("dplyr")
#install.packages("ggplot2")
library(DBI)
library(RMySQL)
library(dplyr)
library(ggplot2)

# Una vez que se tengan las librerias necesarias se procede a la lectura 
# (podría ser que necesites otras, si te las solicita instalalas y cargalas), 
# de la base de datos de Shiny la cual es un demo y nos permite interactuar con 
# este tipo de objetos. El comando dbConnect es el indicado para realizar la 
# lectura, los demás parametros son los que nos dan acceso a la BDD.

MyDataBase <- dbConnect(
  drv = RMySQL::MySQL(),
  dbname = "shinydemo",
  host = "shiny-demo.csa7qlmguqrf.us-east-1.rds.amazonaws.com",
  username = "guest",
  password = "guest")

dbListFields(MyDataBase, 'CountryLanguage')
DataDB <- dbGetQuery(MyDataBase, "select * from CountryLanguage")
head(DataDB)

per.spanish <-  DataDB %>% filter(Language == 'Spanish')  

head(per.spanish)
#df.spanish <- as.data.frame(per.spanish) 
per.spanish %>% ggplot(aes( x = CountryCode, y=Percentage, fill = IsOfficial )) + 
  geom_bin2d() +
  coord_flip()



#########################################   Reto 2

install.packages("rvest")
library(rvest)

link1 <- "https://www.glassdoor.com.mx/Sueldos/data-scientist-sueldo-SRCH_KO0,14.htm"
fileHTML <- read_html(link1)

tables <- html_nodes(fileHTML, "table")
table1 <- html_table(tables[1], fill = TRUE)

table <- na.omit(as.data.frame(table1))

str(table)

sueldo <- gsub("MXN","",table$Sueldo)
sueldo <- gsub("[^[:alnum:][:blank:]?]", "", sueldo)
sueldo <- gsub("mes", "", sueldo)

sueldo <- as.numeric(sueldo)
table$Sueldo <- sueldo

empresa <- gsub("Sueldos para Data Scientist en ", "", table$Cargo)
empresa <- gsub("-.*", "", empresa)
table$Cargo <- empresa

max.sueldo <- which.max(table$Sueldo)
table[max.sueldo,]

min.sueldo <- which.min(table$Sueldo)
table[min.sueldo,]

