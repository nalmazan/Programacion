# Tarea 1
# Librería ----
library(dplyr)
library(readxl)

# URL
url <- "https://raw.githubusercontent.com/MinCiencia/Datos-COVID19/master/output/producto19/CasosActivosPorComuna_std.csv"
Casos_Activos <- read.csv(url)
Casos_Activos

# Intento chat ----

# Calcular la tasa de casos por cada 100,000 habitantes
(Casos_Activos$Casos.activos/Casos_Activos$Poblacion)*100000

# Identificar las comunas que en algún momento superaron 50 casos por 100,000 habitantes
comunas_con_mas_de_50 <- unique(Casos_Activos$Comuna[Casos_Activos > 50])

# Calcular la proporción de comunas que cumplen con el criterio
proporcion_comunas_mas_de_50 <- length(comunas_con_mas_de_50) / length(unique(Casos_Activos$Comuna))
