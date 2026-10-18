CREATE TABLE IF NOT EXISTS public.ventas_mensuales (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    anio INTEGER NOT NULL,
    mes INTEGER NOT NULL,
    moneda VARCHAR(3) NOT NULL,
    ventas_netas NUMERIC(18,2) NOT NULL,
    fecha_carga TIMESTAMPTZ DEFAULT NOW(),
    UNIQUE (anio, mes, moneda)
);

ALTER TABLE public.ventas_mensuales
ENABLE ROW LEVEL SECURITY;


CREATE TABLE IF NOT EXISTS public.resultados_modelo (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre_modelo VARCHAR(100) NOT NULL UNIQUE,
    algoritmo VARCHAR(100) NOT NULL,
    registros_entrenamiento INTEGER NOT NULL,
    registros_prueba INTEGER NOT NULL,
    cantidad_variables INTEGER NOT NULL,
    cantidad_arboles INTEGER NOT NULL,
    profundidad_maxima INTEGER NOT NULL,
    mae NUMERIC(18,2) NOT NULL,
    rmse NUMERIC(18,2) NOT NULL,
    r2 NUMERIC(10,4) NOT NULL,
    fecha_registro TIMESTAMPTZ DEFAULT NOW()
);

ALTER TABLE public.resultados_modelo
ENABLE ROW LEVEL SECURITY;
