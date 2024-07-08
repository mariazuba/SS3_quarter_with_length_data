# función que elimina archivos
dir.origin<-getwd()
dir<-"boot/initial/data/Scenarios"
# Lista de carpetas
carpetas_principales  <- c("S0.5","S1.0","S1.1","S2.0","S2.1","S2.2","S3.0","S4.0","S4.1")

# Lista de archivos a eliminar
archivos_a_mantener <- c("control.ss", "data.ss", "forecast.ss","starter.ss")
# Iterar sobre cada carpeta principal
for (i in 1:length(carpetas_principales)) {
  # Construir la ruta completa de la carpeta
  ruta_carpeta <- file.path(dir, carpetas_principales[i])
  
  # Cambiar el directorio de trabajo a la carpeta actual
  setwd(ruta_carpeta)
  
  # Obtener lista de archivos y carpetas en la carpeta
  elementos <- list.files()
  
  # Filtrar elementos a eliminar
  elementos_a_eliminar <- setdiff(elementos, archivos_a_mantener)
  
  # Eliminar elementos
  for (elemento in elementos_a_eliminar) {
    if (dir.exists(elemento)) {
      unlink(elemento, recursive = TRUE)  # Eliminar carpetas recursivamente
      cat("Carpeta eliminada:", file.path(ruta_carpeta, elemento), "\n")
    } else {
      file.remove(elemento)  # Eliminar archivos
      cat("Archivo eliminado:", file.path(ruta_carpeta, elemento), "\n")
    }
  }
  setwd(dir.origin)
}


