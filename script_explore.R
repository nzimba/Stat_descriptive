
# Installer le packages (si ce n'est pas déjà fait))
if (!require(funModeling)) install.packages("funModeling")
if (!require(dplyr)) install.packages("explore")
if (!require(dplyr)) install.packages("dyplr")
if (!require(here)) install.packages("here")

library(funModeling)
library(explore)
library(dyplr)
library(here)


#### dataset

data(heart_disease)
str(heart_disease)

### Visualisation des données 

explore(heart_disease)


### visualisation des données en se concentrant sur les variables quantitatives 

heart_disease %>% 
  # sélection des variables numériques
  select(where(is.numeric)) %>% 
  explore_all() 

### visualisation des données en se concentrant sur les facteurs (qualitatives)

heart_disease %>% 
  # sélection des variables numériques
  select(where(is.factor)) %>% 
  explore_all() 

### visauliser les données selon les groupes

heart_disease %>% 
  # sélection des variables numériques, et de la variable heart_disease = variable de groupe
  select(where(is.numeric), has_heart_disease) %>% 
  explore_all(target=has_heart_disease) 

heart_disease %>% 
  # sélection des variables catégorielle, et de la variable heart_disease = variable de groupe
  select(where(is.factor),has_heart_disease) %>% 
  explore_all(target=has_heart_disease) 



#### Analyse des données

library(readxl)

#df = read.table("C:/Users/User/Documents/Apprendre_shiny/Analyse_pdf/Stat_descriptive/data.xlsx")

df = read.table(choose.files())