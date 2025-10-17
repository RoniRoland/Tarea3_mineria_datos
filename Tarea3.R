library(readxl)

data <- read_excel("F:\\Documentos\\Docs Roni\\Documentos Roni\\Docs U AND Cursos\\USAC MAESTRIA\\MAESTRIA DATA ANLISIS\\Cursos\\Mineria de datos\\base-de-datos-violencia-intrafamiliar-ano-2024_v3.xlsx")

data_fp <- data[, c("HEC_MES", "HEC_DEPTO", "QUIEN_REPORTA", "VIC_SEXO", "VIC_EDAD", "HEC_TIPAGRE")]

reglas_fp <- fim4r(data_fp, method = "fpgrowth", target = "rules", supp = 0.2, conf = 0.5)

rf <- as(reglas_fp, "data.frame")

colnames(data)

data_fp_tarea <- data[, c("HEC_MES", "VIC_SEXO", "VIC_EDAD", "VIC_EST_CIV", "VIC_ESCOLARIDAD", "HEC_TIPAGRE", "VIC_REL_AGR"        
)]

reglas_fp_tarea <- fim4r(data_fp_tarea, method = "fpgrowth", target = "rules", supp = 0.2, conf = 0.5)

rf_tarea <- as(reglas_fp_tarea, "data.frame")

head(rf_tarea)

{VIC_EST_CIV=[2,5)} => {VIC_SEXO=[1,2]}
{VIC_EST_CIV=[2,5),HEC_TIPAGRE=[2.12e+03,2.22e+03]} => {VIC_SEXO=[1,2]}
{VIC_SEXO=[1,2],VIC_REL_AGR=[3,10]} => {HEC_TIPAGRE=[2.12e+03,2.22e+03]}
