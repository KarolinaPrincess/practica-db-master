-- Función mejorada: Cambia estado de pizarra Y ocupa al técnico
CREATE OR REPLACE FUNCTION fn_gestionar_incidencia()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE pizarras SET estado = 'En Reparación' WHERE id_pizarra = NEW.id_pizarra;
    UPDATE tecnicos SET disponible = FALSE WHERE id_tecnico = NEW.id_tecnico;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trg_nueva_incidencia
AFTER INSERT ON reportes_fallos
FOR EACH ROW EXECUTE FUNCTION fn_gestionar_incidencia();