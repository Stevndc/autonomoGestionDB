DELIMITER $$

CREATE PROCEDURE Insertar_bomberos (IN p_rango_id int, IN p_nombre varchar(255), IN p_apellido varchar(255), IN p_edad int, IN p_genero varchar(255), IN p_telefono varchar(255), IN p_correo varchar(255)) 
BEGIN
    INSERT INTO bomberos (rango_id, nombre, apellido, edad, genero, telefono, correo) VALUES (p_rango_id, p_nombre, p_apellido, p_edad, p_genero, p_telefono, p_correo);
END $$

CREATE PROCEDURE Actualizar_bomberos (IN p_bombero_id int, IN p_rango_id int, IN p_nombre varchar(255), IN p_apellido varchar(255), IN p_edad int, IN p_genero varchar(255), IN p_telefono varchar(255), IN p_correo varchar(255)) 
BEGIN
    UPDATE bomberos SET rango_id = p_rango_id, nombre = p_nombre, apellido = p_apellido, edad = p_edad, genero = p_genero, telefono = p_telefono, correo = p_correo WHERE bombero_id = p_bombero_id;
END $$

CREATE PROCEDURE Eliminar_bomberos (IN p_bombero_id int) 
BEGIN
    DELETE FROM bomberos WHERE bombero_id = p_bombero_id;
END $$

CREATE PROCEDURE ObtenerTodos_bomberos () 
BEGIN
    SELECT * FROM bomberos;
END $$

CREATE PROCEDURE Insertar_equipos_estacion (IN p_nombre_equipo int) 
BEGIN
    INSERT INTO equipos_estacion (nombre_equipo) VALUES (p_nombre_equipo);
END $$

CREATE PROCEDURE Actualizar_equipos_estacion (IN p_equipo_id int, IN p_nombre_equipo int) 
BEGIN
    UPDATE equipos_estacion SET nombre_equipo = p_nombre_equipo WHERE equipo_id = p_equipo_id;
END $$

CREATE PROCEDURE Eliminar_equipos_estacion (IN p_equipo_id int) 
BEGIN
    DELETE FROM equipos_estacion WHERE equipo_id = p_equipo_id;
END $$

CREATE PROCEDURE ObtenerTodos_equipos_estacion () 
BEGIN
    SELECT * FROM equipos_estacion;
END $$

CREATE PROCEDURE Insertar_estaciones (IN p_nombre_estacion varchar(255), IN p_direccion varchar(255), IN p_ciudad varchar(255)) 
BEGIN
    INSERT INTO estaciones (nombre_estacion, direccion, ciudad) VALUES (p_nombre_estacion, p_direccion, p_ciudad);
END $$

CREATE PROCEDURE Actualizar_estaciones (IN p_estacion_id int, IN p_nombre_estacion varchar(255), IN p_direccion varchar(255), IN p_ciudad varchar(255)) 
BEGIN
    UPDATE estaciones SET nombre_estacion = p_nombre_estacion, direccion = p_direccion, ciudad = p_ciudad WHERE estacion_id = p_estacion_id;
END $$

CREATE PROCEDURE Eliminar_estaciones (IN p_estacion_id int) 
BEGIN
    DELETE FROM estaciones WHERE estacion_id = p_estacion_id;
END $$

CREATE PROCEDURE ObtenerTodos_estaciones () 
BEGIN
    SELECT * FROM estaciones;
END $$

CREATE PROCEDURE Insertar_intervenciones_emergencia (IN p_salida_id int, IN p_reporte_incidencias_id int, IN p_equipo_id int) 
BEGIN
    INSERT INTO intervenciones_emergencia (salida_id, reporte_incidencias_id, equipo_id) VALUES (p_salida_id, p_reporte_incidencias_id, p_equipo_id);
END $$

CREATE PROCEDURE Actualizar_intervenciones_emergencia (IN p_intervencion_id int, IN p_salida_id int, IN p_reporte_incidencias_id int, IN p_equipo_id int) 
BEGIN
    UPDATE intervenciones_emergencia SET salida_id = p_salida_id, reporte_incidencias_id = p_reporte_incidencias_id, equipo_id = p_equipo_id WHERE intervencion_id = p_intervencion_id;
END $$

CREATE PROCEDURE Eliminar_intervenciones_emergencia (IN p_intervencion_id int) 
BEGIN
    DELETE FROM intervenciones_emergencia WHERE intervencion_id = p_intervencion_id;
END $$

CREATE PROCEDURE ObtenerTodos_intervenciones_emergencia () 
BEGIN
    SELECT * FROM intervenciones_emergencia;
END $$

CREATE PROCEDURE Insertar_jornadas_trabajo (IN p_fecha date, IN p_fecha_jornada datetime, IN p_fin_jornada datetime) 
BEGIN
    INSERT INTO jornadas_trabajo (fecha, fecha_jornada, fin_jornada) VALUES (p_fecha, p_fecha_jornada, p_fin_jornada);
END $$

CREATE PROCEDURE Actualizar_jornadas_trabajo (IN p_jornada_id int, IN p_fecha date, IN p_fecha_jornada datetime, IN p_fin_jornada datetime) 
BEGIN
    UPDATE jornadas_trabajo SET fecha = p_fecha, fecha_jornada = p_fecha_jornada, fin_jornada = p_fin_jornada WHERE jornada_id = p_jornada_id;
END $$

CREATE PROCEDURE Eliminar_jornadas_trabajo (IN p_jornada_id int) 
BEGIN
    DELETE FROM jornadas_trabajo WHERE jornada_id = p_jornada_id;
END $$

CREATE PROCEDURE ObtenerTodos_jornadas_trabajo () 
BEGIN
    SELECT * FROM jornadas_trabajo;
END $$

CREATE PROCEDURE Insertar_llamada_tipo (IN p_tipo_llamada varchar(255)) 
BEGIN
    INSERT INTO llamada_tipo (tipo_llamada) VALUES (p_tipo_llamada);
END $$

CREATE PROCEDURE Actualizar_llamada_tipo (IN p_llamada_tipo_id int, IN p_tipo_llamada varchar(255)) 
BEGIN
    UPDATE llamada_tipo SET tipo_llamada = p_tipo_llamada WHERE llamada_tipo_id = p_llamada_tipo_id;
END $$

CREATE PROCEDURE Eliminar_llamada_tipo (IN p_llamada_tipo_id int) 
BEGIN
    DELETE FROM llamada_tipo WHERE llamada_tipo_id = p_llamada_tipo_id;
END $$

CREATE PROCEDURE ObtenerTodos_llamada_tipo () 
BEGIN
    SELECT * FROM llamada_tipo;
END $$

CREATE PROCEDURE Insertar_llamadas_usuario (IN p_tipo_llamada_id int, IN p_estacion_id int, IN p_llamada_fecha date, IN p_llamada_descripcion text) 
BEGIN
    INSERT INTO llamadas_usuario (tipo_llamada_id, estacion_id, llamada_fecha, llamada_descripcion) VALUES (p_tipo_llamada_id, p_estacion_id, p_llamada_fecha, p_llamada_descripcion);
END $$

CREATE PROCEDURE Actualizar_llamadas_usuario (IN p_llamada_usuario_id int, IN p_tipo_llamada_id int, IN p_estacion_id int, IN p_llamada_fecha date, IN p_llamada_descripcion text) 
BEGIN
    UPDATE llamadas_usuario SET tipo_llamada_id = p_tipo_llamada_id, estacion_id = p_estacion_id, llamada_fecha = p_llamada_fecha, llamada_descripcion = p_llamada_descripcion WHERE llamada_usuario_id = p_llamada_usuario_id;
END $$

CREATE PROCEDURE Eliminar_llamadas_usuario (IN p_llamada_usuario_id int) 
BEGIN
    DELETE FROM llamadas_usuario WHERE llamada_usuario_id = p_llamada_usuario_id;
END $$

CREATE PROCEDURE ObtenerTodos_llamadas_usuario () 
BEGIN
    SELECT * FROM llamadas_usuario;
END $$

CREATE PROCEDURE Insertar_mantenimiento_tipo (IN p_nombre_tipo_mantenimiento int, IN p_descripcion int) 
BEGIN
    INSERT INTO mantenimiento_tipo (nombre_tipo_mantenimiento, descripcion) VALUES (p_nombre_tipo_mantenimiento, p_descripcion);
END $$

CREATE PROCEDURE Actualizar_mantenimiento_tipo (IN p_mantenimiento_tipo_id int, IN p_nombre_tipo_mantenimiento int, IN p_descripcion int) 
BEGIN
    UPDATE mantenimiento_tipo SET nombre_tipo_mantenimiento = p_nombre_tipo_mantenimiento, descripcion = p_descripcion WHERE mantenimiento_tipo_id = p_mantenimiento_tipo_id;
END $$

CREATE PROCEDURE Eliminar_mantenimiento_tipo (IN p_mantenimiento_tipo_id int) 
BEGIN
    DELETE FROM mantenimiento_tipo WHERE mantenimiento_tipo_id = p_mantenimiento_tipo_id;
END $$

CREATE PROCEDURE ObtenerTodos_mantenimiento_tipo () 
BEGIN
    SELECT * FROM mantenimiento_tipo;
END $$

CREATE PROCEDURE Insertar_mantenimientos (IN p_mantenimiento_tipo_id int, IN p_organizacion_mantenimiento int, IN p_vehiculo_id int, IN p_mantenimiento_fecha varchar(255), IN p_mantenimiento_costo float) 
BEGIN
    INSERT INTO mantenimientos (mantenimiento_tipo_id, organizacion_mantenimiento, vehiculo_id, mantenimiento_fecha, mantenimiento_costo) VALUES (p_mantenimiento_tipo_id, p_organizacion_mantenimiento, p_vehiculo_id, p_mantenimiento_fecha, p_mantenimiento_costo);
END $$

CREATE PROCEDURE Actualizar_mantenimientos (IN p_mantenimiento_id int, IN p_mantenimiento_tipo_id int, IN p_organizacion_mantenimiento int, IN p_vehiculo_id int, IN p_mantenimiento_fecha varchar(255), IN p_mantenimiento_costo float) 
BEGIN
    UPDATE mantenimientos SET mantenimiento_tipo_id = p_mantenimiento_tipo_id, organizacion_mantenimiento = p_organizacion_mantenimiento, vehiculo_id = p_vehiculo_id, mantenimiento_fecha = p_mantenimiento_fecha, mantenimiento_costo = p_mantenimiento_costo WHERE mantenimiento_id = p_mantenimiento_id;
END $$

CREATE PROCEDURE Eliminar_mantenimientos (IN p_mantenimiento_id int) 
BEGIN
    DELETE FROM mantenimientos WHERE mantenimiento_id = p_mantenimiento_id;
END $$

CREATE PROCEDURE ObtenerTodos_mantenimientos () 
BEGIN
    SELECT * FROM mantenimientos;
END $$

CREATE PROCEDURE Insertar_materiales (IN p_estacion_id int, IN p_nombre_material varchar(255), IN p_cantidad_disponible int, IN p_cantidad_minima int) 
BEGIN
    INSERT INTO materiales (estacion_id, nombre_material, cantidad_disponible, cantidad_minima) VALUES (p_estacion_id, p_nombre_material, p_cantidad_disponible, p_cantidad_minima);
END $$

CREATE PROCEDURE Actualizar_materiales (IN p_inventario_id int, IN p_estacion_id int, IN p_nombre_material varchar(255), IN p_cantidad_disponible int, IN p_cantidad_minima int) 
BEGIN
    UPDATE materiales SET estacion_id = p_estacion_id, nombre_material = p_nombre_material, cantidad_disponible = p_cantidad_disponible, cantidad_minima = p_cantidad_minima WHERE inventario_id = p_inventario_id;
END $$

CREATE PROCEDURE Eliminar_materiales (IN p_inventario_id int) 
BEGIN
    DELETE FROM materiales WHERE inventario_id = p_inventario_id;
END $$

CREATE PROCEDURE ObtenerTodos_materiales () 
BEGIN
    SELECT * FROM materiales;
END $$

CREATE PROCEDURE Insertar_organizacion_mantenimiento (IN p_nombre int, IN p_direccion varchar(255), IN p_telefono varchar(255)) 
BEGIN
    INSERT INTO organizacion_mantenimiento (nombre, direccion, telefono) VALUES (p_nombre, p_direccion, p_telefono);
END $$

CREATE PROCEDURE Actualizar_organizacion_mantenimiento (IN p_organizacion_mantenimiento_id int, IN p_nombre int, IN p_direccion varchar(255), IN p_telefono varchar(255)) 
BEGIN
    UPDATE organizacion_mantenimiento SET nombre = p_nombre, direccion = p_direccion, telefono = p_telefono WHERE organizacion_mantenimiento_id = p_organizacion_mantenimiento_id;
END $$

CREATE PROCEDURE Eliminar_organizacion_mantenimiento (IN p_organizacion_mantenimiento_id int) 
BEGIN
    DELETE FROM organizacion_mantenimiento WHERE organizacion_mantenimiento_id = p_organizacion_mantenimiento_id;
END $$

CREATE PROCEDURE ObtenerTodos_organizacion_mantenimiento () 
BEGIN
    SELECT * FROM organizacion_mantenimiento;
END $$

CREATE PROCEDURE Insertar_participantes_formaciones (IN p_sesion_formacion_id int, IN p_bombero_id int) 
BEGIN
    INSERT INTO participantes_formaciones (sesion_formacion_id, bombero_id) VALUES (p_sesion_formacion_id, p_bombero_id);
END $$

CREATE PROCEDURE Actualizar_participantes_formaciones (IN p_participante_formacion_id int, IN p_sesion_formacion_id int, IN p_bombero_id int) 
BEGIN
    UPDATE participantes_formaciones SET sesion_formacion_id = p_sesion_formacion_id, bombero_id = p_bombero_id WHERE participante_formacion_id = p_participante_formacion_id;
END $$

CREATE PROCEDURE Eliminar_participantes_formaciones (IN p_participante_formacion_id int) 
BEGIN
    DELETE FROM participantes_formaciones WHERE participante_formacion_id = p_participante_formacion_id;
END $$

CREATE PROCEDURE ObtenerTodos_participantes_formaciones () 
BEGIN
    SELECT * FROM participantes_formaciones;
END $$

CREATE PROCEDURE Insertar_participantes_incidencias (IN p_reporte_incidencias_id int, IN p_bombero_id int) 
BEGIN
    INSERT INTO participantes_incidencias (reporte_incidencias_id, bombero_id) VALUES (p_reporte_incidencias_id, p_bombero_id);
END $$

CREATE PROCEDURE Actualizar_participantes_incidencias (IN p_participante_id int, IN p_reporte_incidencias_id int, IN p_bombero_id int) 
BEGIN
    UPDATE participantes_incidencias SET reporte_incidencias_id = p_reporte_incidencias_id, bombero_id = p_bombero_id WHERE participante_id = p_participante_id;
END $$

CREATE PROCEDURE Eliminar_participantes_incidencias (IN p_participante_id int) 
BEGIN
    DELETE FROM participantes_incidencias WHERE participante_id = p_participante_id;
END $$

CREATE PROCEDURE ObtenerTodos_participantes_incidencias () 
BEGIN
    SELECT * FROM participantes_incidencias;
END $$

CREATE PROCEDURE Insertar_rangos (IN p_nombre_rango varchar(255)) 
BEGIN
    INSERT INTO rangos (nombre_rango) VALUES (p_nombre_rango);
END $$

CREATE PROCEDURE Actualizar_rangos (IN p_rango_id int, IN p_nombre_rango varchar(255)) 
BEGIN
    UPDATE rangos SET nombre_rango = p_nombre_rango WHERE rango_id = p_rango_id;
END $$

CREATE PROCEDURE Eliminar_rangos (IN p_rango_id int) 
BEGIN
    DELETE FROM rangos WHERE rango_id = p_rango_id;
END $$

CREATE PROCEDURE ObtenerTodos_rangos () 
BEGIN
    SELECT * FROM rangos;
END $$

CREATE PROCEDURE Insertar_registro_asistencias (IN p_jornada_id int, IN p_bombero_id int, IN p_asistencia_fecha date, IN p_asistencia_tipo varchar(255)) 
BEGIN
    INSERT INTO registro_asistencias (jornada_id, bombero_id, asistencia_fecha, asistencia_tipo) VALUES (p_jornada_id, p_bombero_id, p_asistencia_fecha, p_asistencia_tipo);
END $$

CREATE PROCEDURE Actualizar_registro_asistencias (IN p_registro_asistencia_id int, IN p_jornada_id int, IN p_bombero_id int, IN p_asistencia_fecha date, IN p_asistencia_tipo varchar(255)) 
BEGIN
    UPDATE registro_asistencias SET jornada_id = p_jornada_id, bombero_id = p_bombero_id, asistencia_fecha = p_asistencia_fecha, asistencia_tipo = p_asistencia_tipo WHERE registro_asistencia_id = p_registro_asistencia_id;
END $$

CREATE PROCEDURE Eliminar_registro_asistencias (IN p_registro_asistencia_id int) 
BEGIN
    DELETE FROM registro_asistencias WHERE registro_asistencia_id = p_registro_asistencia_id;
END $$

CREATE PROCEDURE ObtenerTodos_registro_asistencias () 
BEGIN
    SELECT * FROM registro_asistencias;
END $$

CREATE PROCEDURE Insertar_reportes_incidencias (IN p_estacion_id int, IN p_equipo_id int, IN p_descripcion text, IN p_fecha date) 
BEGIN
    INSERT INTO reportes_incidencias (estacion_id, equipo_id, descripcion, fecha) VALUES (p_estacion_id, p_equipo_id, p_descripcion, p_fecha);
END $$

CREATE PROCEDURE Actualizar_reportes_incidencias (IN p_reporte_incidencias_id int, IN p_estacion_id int, IN p_equipo_id int, IN p_descripcion text, IN p_fecha date) 
BEGIN
    UPDATE reportes_incidencias SET estacion_id = p_estacion_id, equipo_id = p_equipo_id, descripcion = p_descripcion, fecha = p_fecha WHERE reporte_incidencias_id = p_reporte_incidencias_id;
END $$

CREATE PROCEDURE Eliminar_reportes_incidencias (IN p_reporte_incidencias_id int) 
BEGIN
    DELETE FROM reportes_incidencias WHERE reporte_incidencias_id = p_reporte_incidencias_id;
END $$

CREATE PROCEDURE ObtenerTodos_reportes_incidencias () 
BEGIN
    SELECT * FROM reportes_incidencias;
END $$

CREATE PROCEDURE Insertar_salidas_emergencia (IN p_reporte_incidencias_id int, IN p_vehiculo_id int, IN p_bombero_id int, IN p_fecha date, IN p_hora_salida datetime, IN p_hora_llegada datetime) 
BEGIN
    INSERT INTO salidas_emergencia (reporte_incidencias_id, vehiculo_id, bombero_id, fecha, hora_salida, hora_llegada) VALUES (p_reporte_incidencias_id, p_vehiculo_id, p_bombero_id, p_fecha, p_hora_salida, p_hora_llegada);
END $$

CREATE PROCEDURE Actualizar_salidas_emergencia (IN p_salida_id int, IN p_reporte_incidencias_id int, IN p_vehiculo_id int, IN p_bombero_id int, IN p_fecha date, IN p_hora_salida datetime, IN p_hora_llegada datetime) 
BEGIN
    UPDATE salidas_emergencia SET reporte_incidencias_id = p_reporte_incidencias_id, vehiculo_id = p_vehiculo_id, bombero_id = p_bombero_id, fecha = p_fecha, hora_salida = p_hora_salida, hora_llegada = p_hora_llegada WHERE salida_id = p_salida_id;
END $$

CREATE PROCEDURE Eliminar_salidas_emergencia (IN p_salida_id int) 
BEGIN
    DELETE FROM salidas_emergencia WHERE salida_id = p_salida_id;
END $$

CREATE PROCEDURE ObtenerTodos_salidas_emergencia () 
BEGIN
    SELECT * FROM salidas_emergencia;
END $$

CREATE PROCEDURE Insertar_sesiones_formacion (IN p_nombre_sesion int, IN p_fecha date, IN p_duracion int) 
BEGIN
    INSERT INTO sesiones_formacion (nombre_sesion, fecha, duracion) VALUES (p_nombre_sesion, p_fecha, p_duracion);
END $$

CREATE PROCEDURE Actualizar_sesiones_formacion (IN p_sesion_formacion_id int, IN p_nombre_sesion int, IN p_fecha date, IN p_duracion int) 
BEGIN
    UPDATE sesiones_formacion SET nombre_sesion = p_nombre_sesion, fecha = p_fecha, duracion = p_duracion WHERE sesion_formacion_id = p_sesion_formacion_id;
END $$

CREATE PROCEDURE Eliminar_sesiones_formacion (IN p_sesion_formacion_id int) 
BEGIN
    DELETE FROM sesiones_formacion WHERE sesion_formacion_id = p_sesion_formacion_id;
END $$

CREATE PROCEDURE ObtenerTodos_sesiones_formacion () 
BEGIN
    SELECT * FROM sesiones_formacion;
END $$

CREATE PROCEDURE Insertar_tipo_vehiculos (IN p_tipo_vehiculo varchar(255)) 
BEGIN
    INSERT INTO tipo_vehiculos (tipo_vehiculo) VALUES (p_tipo_vehiculo);
END $$

CREATE PROCEDURE Actualizar_tipo_vehiculos (IN p_tipo_vehiculo_id int, IN p_tipo_vehiculo varchar(255)) 
BEGIN
    UPDATE tipo_vehiculos SET tipo_vehiculo = p_tipo_vehiculo WHERE tipo_vehiculo_id = p_tipo_vehiculo_id;
END $$

CREATE PROCEDURE Eliminar_tipo_vehiculos (IN p_tipo_vehiculo_id int) 
BEGIN
    DELETE FROM tipo_vehiculos WHERE tipo_vehiculo_id = p_tipo_vehiculo_id;
END $$

CREATE PROCEDURE ObtenerTodos_tipo_vehiculos () 
BEGIN
    SELECT * FROM tipo_vehiculos;
END $$

CREATE PROCEDURE Insertar_vehiculos (IN p_tipo_vehiculo_id int, IN p_estacion_id int, IN p_marca varchar(255), IN p_modelo varchar(255), IN p_año_fabricacion int) 
BEGIN
    INSERT INTO vehiculos (tipo_vehiculo_id, estacion_id, marca, modelo, año_fabricacion) VALUES (p_tipo_vehiculo_id, p_estacion_id, p_marca, p_modelo, p_año_fabricacion);
END $$

CREATE PROCEDURE Actualizar_vehiculos (IN p_vehiculo_id int, IN p_tipo_vehiculo_id int, IN p_estacion_id int, IN p_marca varchar(255), IN p_modelo varchar(255), IN p_año_fabricacion int) 
BEGIN
    UPDATE vehiculos SET tipo_vehiculo_id = p_tipo_vehiculo_id, estacion_id = p_estacion_id, marca = p_marca, modelo = p_modelo, año_fabricacion = p_año_fabricacion WHERE vehiculo_id = p_vehiculo_id;
END $$

CREATE PROCEDURE Eliminar_vehiculos (IN p_vehiculo_id int) 
BEGIN
    DELETE FROM vehiculos WHERE vehiculo_id = p_vehiculo_id;
END $$

CREATE PROCEDURE ObtenerTodos_vehiculos () 
BEGIN
    SELECT * FROM vehiculos;
END $$

DELIMITER ;
