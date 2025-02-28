
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




