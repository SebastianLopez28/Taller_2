-- Reemplaza parte de un texto por otro
DELIMITER //
CREATE PROCEDURE sp_Replace_Correo()
BEGIN
  select cli_correo, REPLACE(cli_correo, '.com', '.com.co') AS correo_modificado
  from cliente;
END//
DELIMITER ;

-- Invierte el orden de los caracteres
DELIMITER //
CREATE PROCEDURE sp_Reverse_Nombre()
BEGIN
  select cli_nombre, REVERSE(cli_nombre) AS nombre_invertido
  from cliente;
END//
DELIMITER ;

-- Extrae caracteres desde la derecha los cuatro ultimos dijitos del numero 
DELIMITER //
CREATE PROCEDURE sp_Right_Telefono()
BEGIN
  select cli_telefono, RIGHT(cli_telefono, 4) AS ultimos_digitos
  from cliente;
END//
DELIMITER ;

-- Inserta espacios en blanco
DELIMITER //
CREATE PROCEDURE sp_Space_NombreCompleto()
BEGIN
  select CONCAT(cli_nombre, SPACE(3), cli_apellido) AS nombre_espaciado
  from cliente;
END//
DELIMITER ;

-- Extrae una subcadena de texto
DELIMITER //
CREATE PROCEDURE sp_Substr_Campania()
BEGIN
  select cam_nombre, SUBSTR(cam_nombre, 1, 10) AS nombre_corto
  from campania;
END//
DELIMITER ;

-- Extrae una subcadena de texto
DELIMITER //
CREATE PROCEDURE sp_Substring_Usuario()
BEGIN
  select cli_correo, SUBSTRING(cli_correo, 1, LOCATE('@', cli_correo)-1) AS usuario
  from cliente;
END//
DELIMITER ;


-- Convierte texto a mayúsculas
DELIMITER //
CREATE PROCEDURE sp_Upper_Ciudad()
BEGIN
  select cli_ciudad, UPPER(cli_ciudad) AS ciudad_mayus
  from cliente;
END//
DELIMITER ;

-- Une varios textos en uno solo
DELIMITER //
CREATE PROCEDURE sp_Concat_NombreCompleto()
BEGIN
  select CONCAT(cli_nombre, ' ', cli_apellido) AS nombre_completo
  from cliente;
END//
DELIMITER ;

-- Da la posición de un valor en una lista
DELIMITER //
CREATE PROCEDURE sp_Field_Canal()
BEGIN
  select can_nombre, FIELD(can_nombre, 'Email Marketing', 'Facebook Ads', 'Valla') AS posicion
  from canal;
END//
DELIMITER ;

-- Da formato numérico con separadores
DELIMITER //
CREATE PROCEDURE sp_Format_Presupuesto()
BEGIN
  select cam_nombre, FORMAT(cam_presupuesto, 0) AS presupuesto_formateado
  from campania;
END//
DELIMITER ;

-- Convierte texto a minúsculas
DELIMITER //
CREATE PROCEDURE sp_Lcase_Canal()
BEGIN
  select can_nombre, LCASE(can_nombre) AS canal_minus
  from canal;
END//
DELIMITER ;

-- Extrae caracteres desde la izquierda
DELIMITER //
CREATE PROCEDURE sp_Left_Iniciales()
BEGIN
  select cli_nombre, LEFT(cli_nombre, 3) AS iniciales
  from cliente;
END//
DELIMITER ;

-- Cuenta la longitud de un texto
DELIMITER //
CREATE PROCEDURE sp_Length_Campania()
BEGIN
  select cam_nombre, LENGTH(cam_nombre) AS longitud
  from campania;
END//
DELIMITER ;

-- Convierte texto a minúsculas
DELIMITER //
CREATE PROCEDURE sp_Lower_Canal()
BEGIN
  select can_nombre, LOWER(can_nombre) AS canal_minus
  from canal;
END//
DELIMITER ;

-- Repite un texto varias veces
DELIMITER //
CREATE PROCEDURE sp_Repeat_Destacado()
BEGIN
  select cam_nombre, REPEAT('★', 3) AS destacado
  from campania;
END//
DELIMITER ;