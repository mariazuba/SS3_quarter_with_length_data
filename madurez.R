# ojiva madurez

# datos de Millán 1999. https://doi.org/10.1016/S0165-7836(99)00010-7
# Ejemplo de datos (asegúrate de usar tus propios datos)
longitudes <-c(7, 7.5,  8,    8.5,  9,   9.5,  10,   10.5,  11,  11.5, 12, 12.5,  13,   13.5, 14, 14.5, 15,15.5, 16,16.5, 17,17.5, 18)
madurez    <-c(0, 0.03, 0.04, 0.08, 0.1, 0.2, 0.3,  0.4,  0.5, 0.6,  0.7, 0.8, 0.85, 0.95,  1, 1,    1,  1,    1,1,     1, 1,1    )

# Ajustar el modelo logístico no lineal
modelo_logistico <- nls(madurez ~ 1 / (1 + exp(-a * (longitudes - L50))), 
                        start = list(a = 1, L50 = 11))
# Resumen del modelo
summary(modelo_logistico)

# Extraer el valor de L50
L50 <- coef(modelo_logistico)["L50"]

# Crear datos para la curva ajustada
longitudes_pred <- seq(min(longitudes), max(longitudes), length.out = 100)
madurez_pred <- predict(modelo_logistico, newdata = list(longitudes = longitudes_pred))

# Graficar los datos observados y la curva ajustada
plot(longitudes, madurez, pch = 16, xlab = "Longitud (L)", ylab = "Proporción Madura", 
     main = "Ajuste de Curva Logística")
lines(longitudes_pred, madurez_pred, col = "blue", lwd = 2)

# Mostrar L50 en el gráfico
abline(v = L50, col = "red", lwd = 2, lty = 2)
text(L50, 0.5, labels = paste0("L50 = ", round(L50, 2)), pos = 4, col = "red")

L50<- coef(modelo_logistico)["L50"]
pendiente<- coef(modelo_logistico)["a"]

L50
pendiente
