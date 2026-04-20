# Análisis de Logística y Satisfacción en E-Commerce 📊

## 🎯 Contexto de Negocio
En el e-commerce, **la velocidad de entrega no es solo un KPI logístico; es un motor de lealtad.** Este proyecto analiza más de **100,000 pedidos** de Olist (Brasil) para descubrir cómo el desempeño logístico impacta directamente en las calificaciones de los clientes.

**El Problema:** La empresa necesitaba identificar qué factores de la cadena de suministro causaban bajas calificaciones y qué regiones estaban incumpliendo las promesas de entrega (SLA).

## 🛠️ Stack Tecnológico
- **ETL y Limpieza de Datos:** SQL Server (T-SQL).
- **Análisis Estadístico:** Python (Pandas, Seaborn, Matplotlib).
- **Business Intelligence:** Power BI.

## 🚀 Metodología STAR

### **Situación**
El dataset contenía información fragmentada en más de 8 tablas. El negocio no tenía una visión unificada de cómo los adelantos o retrasos en las entregas influían en el `review_score`.

### **Acción**
- **Ingeniería de Datos:** Desarrollé queries optimizadas en SQL para unir datos logísticos y de sentimiento.
- **Análisis con Python:** Realicé un análisis de Boxplots que demostró que las calificaciones de 5 estrellas están ligadas a entregas que llegan **11 días antes** de lo prometido.
- **Desarrollo de Dashboard:** Creé un reporte interactivo en Power BI con KPIs ejecutivos y mapas de calor geográficos.

### **Resultados**
- **Insight Clave:** Se descubrió que los pedidos que superan la fecha estimada incluso por 1 día sufren una **caída del 45%** en la calificación promedio.
- **Estrategia Operativa:** Identifiqué categorías críticas como "Home Comfort" que requieren optimización urgente de proveedores.
