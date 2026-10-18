SELECT
    anio AS "Año",
    mes AS "Mes",
    moneda AS "Moneda",
    ventas_netas AS "Ventas Netas"
FROM public.ventas_mensuales
WHERE moneda = 'USD'
ORDER BY anio, mes;


SELECT
    nombre_modelo AS "Modelo",
    algoritmo AS "Algoritmo",
    registros_entrenamiento AS "Entrenamiento",
    registros_prueba AS "Prueba",
    cantidad_variables AS "Variables",
    mae AS "MAE",
    rmse AS "RMSE",
    r2 AS "R2"
FROM public.resultados_modelo;
