# Tarea 3

Al aplicar el algoritmo **FP-Growth** al conjunto de datos sobre **violencia intrafamiliar en Guatemala (año 2024)**, se identificaron **tres patrones relevantes** en el perfil de las víctimas y el tipo de agresión.  

---

## 🔹 Patrones encontrados

1. **{VIC_EST_CIV=[2,5]} ⇒ {VIC_SEXO=[1,2]}**  
   `support = 0.5458 | confidence = 1.0000 | lift = 1.0000`

2. **{VIC_EST_CIV=[2,5], HEC_TIPAGRE=[2.12e+03,2.22e+03]} ⇒ {VIC_SEXO=[1,2]}**  
   `support = 0.2818 | confidence = 1.0000 | lift = 1.0000`

3. **{VIC_SEXO=[1,2], VIC_REL_AGR=[3,10]} ⇒ {HEC_TIPAGRE=[2.12e+03,2.22e+03]}**  
   `support = 0.3142 | confidence = 0.5981 | lift = 1.1215`

---

## 📊 Conclusiones

### **Patrón 1:**  
Las víctimas con **estado civil “casado(a)” o “unión libre”** corresponden principalmente al **sexo femenino**.  
Esto indica que la **violencia dentro de relaciones conyugales o de convivencia** afecta mayoritariamente a mujeres.

---

### **Patrón 2:**  
Cuando la víctima se encuentra **casada o en unión libre**, y el tipo de agresión se clasifica como **física o psicológica**,  
el **sexo femenino** vuelve a aparecer con el 100% de confianza.  
Esto refuerza la tendencia de que la violencia más común en mujeres es la **psicológica y física dentro del hogar**.

---

### **Patrón 3:**  
Las víctimas que **tienen una relación directa con el agresor** (familiares, pareja o convivientes)  
presentan una **mayor probabilidad (59.8%) de sufrir agresión física o psicológica**.  
El *lift* superior a 1 (1.12) indica una **correlación significativa** entre la cercanía con el agresor y el tipo de violencia reportada.

---

📌 *Los resultados obtenidos con el algoritmo FP-Growth evidencian que las mujeres, especialmente aquellas en relaciones conyugales o familiares, son el grupo más vulnerable a sufrir violencia intrafamiliar de tipo física o psicológica en Guatemala.*


