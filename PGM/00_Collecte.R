
#############################################################################################################
# COLLECTE DES DONNEES
#############################################################################################################

# Collecte des données et création du data frame dans R avec un historique de 13 mois
install.packages("rjson")
library(rjson)
json1 <- fromJSON(file = "D:/Projet/FICIN/Donnees_dezip/data_all_Paris.jjson_2015-10-01-1443673554")
json2 <- fromJSON(file = "D:/Projet/FICIN/Donnees_dezip/data_all_Paris.jjson_2015-11-01-1446355872")
json3 <- fromJSON(file = "D:/Projet/FICIN/Donnees_dezip/data_all_Paris.jjson_2015-12-01-1448947618")
json4 <- fromJSON(file = "D:/Projet/FICIN/Donnees_dezip/data_all_Paris.jjson_2016-01-01-1451625969")
json5 <- fromJSON(file = "D:/Projet/FICIN/Donnees_dezip/data_all_Paris.jjson_2016-02-01-1454304333")
json6 <- fromJSON(file = "D:/Projet/FICIN/Donnees_dezip/data_all_Paris.jjson_2016-03-01-1456809947")
json7 <- fromJSON(file = "D:/Projet/FICIN/Donnees_dezip/data_all_Paris.jjson_2016-04-01-1459484749")
json8 <- fromJSON(file = "D:/Projet/FICIN/Donnees_dezip/data_all_Paris.jjson_2015-12-01-1448947618")
json9 <- fromJSON(file = "D:/Projet/FICIN/Donnees_dezip/data_all_Paris.jjson_2015-12-01-1448947618")
json10 <- fromJSON(file = "D:/Projet/FICIN/Donnees_dezip/data_all_Paris.jjson_2015-12-01-1448947618")

# Concaténation
jsonl <- list(json1, json2, json3)
jsonc <- toJSON(jsonl)
jsonc

# On transforme en data frame
library(jsonlite)
re <- jsonlite::fromJSON(jsonc)

View(re)
head(re)


