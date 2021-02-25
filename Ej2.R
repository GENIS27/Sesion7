getwd()
setwd("c:/Users/nes27/Documents/")
production <- read.table("production.txt", header = T)
class(production)
attach(production) #Para fijar las columnas 
Case
RunTime

plot(RunSize, RunTime, xlab = "Tamaño de ejecución", 
     ylab = "Tiempo de Ejecución", pch= 16)

m1 <- lm(RunTime ~ RunSize ) # Run time depende de Run Size
summary(m1) #P values deben ser menores .05
m1 # RunSize es la pendiente M=.2592

abline(lsfit(RunSize, RunTime)) #Trazar la recta

cor(RunTime ~ RunSize)

#Y = b + mx
149.74770 + .25924 * 250
points(250, 214.5577, pch=16, col= "blue" )


#Reto 1
ml <- read.csv("datoslineal.csv")
class(ml)
attach(ml)

plot(x,y, pch= 16)

mlajus <- lm(y ~ x)
mlajus
summary(mlajus)
anova(mlajus)
abline(lsfit(x, y))

par(mfrow = c(2, 2))
plot(mlajus)
dev.off() #Para regresar a 1 sola grafica 

cor(y~x)
