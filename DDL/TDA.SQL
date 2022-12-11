
/* ===== TDAS ===== */
create or replace type DETALLE as object(
    cant_kg number(5),
    tipo_precio varchar2(15)
    /*constraint tipo_costo check (tipo_precio in ('estandar', 'especial'))*/
);
/
create or replace type CLASIFICACION as object(
    nombre varchar2(25),
    tipo_clas varchar2(50),
    descripcion varchar2(200)
);
/
create or replace type TEMP as object(
    tipo_temp varchar2(30),
    r_sup_f number(3),
    r_inf_f number(3),
    r_sup_c number(3),
    r_inf_c number(3)
    /*constraint tipo_uso check (tipo in ('almacenamiento_ideal', 'mejor_habitacion', 'rango_de_trabajo', 'fundido', 'enfriamiento'))*/
);
/
create or replace type LOTE as object(
    numero number(12),
    fecha_venc date
);
/
create or replace type PRECIO as object(
    precio number(6,2),
    ingrediente varchar2(25)
);
/
create or replace type DIR as object(
    calle_av varchar2(100),
    local varchar2(30),
    numero_local number(10),
    edificio varchar2(30),
    urbanizacion varchar2(30)
);
/
create or replace type CONTAC as object(
    email varchar2(35),
    tlfn number(15),
    tlfn_2 number(15)
);
/
create or replace type VOTO as object(
    total number(3),
    mes number(2),
    ano number(4)
);
/
create or replace type ENVIO as object(
    fecha date,
    kg number(12)
);
/
create or replace type TURNO as object(
    dia varchar2(15),
    hora_ini date,
    hora_fin date
    /*constraint dia_semana check (dia in ('lunes', 'martes', 'miercoles', 'jueves', 'viernes', 'sabado', 'domingo'))*/
);
/
/* ===== TDAS FIN ===== */
