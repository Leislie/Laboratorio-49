# Hecho con gusto por Leislie R. Manjarrez O.

# Laboratorio 49- Diagrama de cajas y bigotes (boxplot) con ggplot2

# Instalar paqueterias
install.packages("gapminder")
install.packages("ggplot2")

# Llamar la librerias
library(gapminder)
library(ggplot2)

# Cargar los datos al entorno
data("gapminder")

# Filtrado por año 2007
gapminder2007 <- gapminder[gapminder$year == '2007',]

# Crear un diagrama de caja y bigotes o boxplot solo con el eje y
ggplot(data = gapminder2007,
       mapping = aes(y = lifeExp))+
  geom_boxplot()

# Crear un diagrama de caja y bigotes o boxplot con ambos ejes
ggplot(data = gapminder2007,
       mapping = aes(x= continent,
         y = lifeExp))+
  geom_boxplot()

# Marcar los datos atípicos en el boxplot
ggplot(data = gapminder2007,
       mapping = aes(x= continent,
                     y = lifeExp))+
  geom_boxplot(outlier.colour = "red",
               outlier.shape = 8,
               outlier.size = 4)

# Hacer el boxplot de forma vertical
ggplot(data = gapminder2007,
       mapping = aes(x= continent,
                     y = lifeExp))+
  geom_boxplot(outlier.colour = "red",
               outlier.shape = 8,
               outlier.size = 4) +
  coord_flip()

# Marcar datos atipicos y todas las observaciones
ggplot(data = gapminder2007,
       mapping = aes(x= continent,
                     y = lifeExp))+
  geom_boxplot()+
  geom_jitter(shape =16,
              position = position_jitter(0.2))

# Colorear cada uno de los continentes
ggplot(data = gapminder2007,
       mapping = aes(x= continent,
                     y = lifeExp,
                     fill = continent))+
  geom_boxplot()