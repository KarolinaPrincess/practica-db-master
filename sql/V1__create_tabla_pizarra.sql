-- Tabla: creacion de tabla pizarras
CREATE TABLE pizarras (
    id_pizarra SERIAL PRIMARY KEY,
    ubicacion VARCHAR(50) NOT NULL,
    estado VARCHAR(20) NOT NULL,
    CONSTRAINT chk_estado_pizarra
    CHECK (estado IN ('Operativa', 'En Reparación', 'Fuera de Servicio'))
);


-- Hola