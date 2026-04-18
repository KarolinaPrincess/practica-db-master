-- Creación de la tabla reportes_fallos.
CREATE TABLE reportes_fallos (
    id_reporte SERIAL PRIMARY KEY, 
    fecha DATE NOT NULL, 
    descripcion VARCHAR(50) NOT NULL,
    id_pizarra INT,
    id_tecnico INT,
    
    CONSTRAINT fk_pizarra FOREIGN KEY (id_pizarra)
        REFERENCES pizarras (id_pizarra) ON DELETE CASCADE, 

    CONSTRAINT fk_tecnico FOREIGN KEY (id_tecnico)
        REFERENCES tecnicos (id_tecnico) ON DELETE SET NULL 
);