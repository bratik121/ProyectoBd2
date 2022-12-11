/* ===== INSERTS CHOCOCOLATERIAS INICIO ==*/

insert into CHOCOLATERIA 
(precio_kg,precio_esp,nombre,logo,contacto,fecha_fundacion, direccion,horarios,id_lugar) values
 (53.35,
  PRECIO_NT(
    PRECIO(55.7,'coco'),
    PRECIO(53,'limon'),
    PRECIO(60,'cafe'),
    PRECIO(65.3,'cocosette'),
    PRECIO(70,'licor')),
  'La casa del chocolate',
  BFILENAME('direc_imagenes_chocolateria','la_casa_del_chocolate.png'),
 CONTAC_ARRAY(
    CONTAC('ventas@lacasadelchocolate.com','02122423492'),
    CONTAC('','02122443657'),
    CONTAC('','02122444289')),
to_date('01/01/2017','dd/mm/yyyy'),
DIR('Calle Araure','2A',2423492,'C.C.SAIVA','Panaquirle'),
HORARIO_NT(
    TURNO('lunes',to_date('7:30:00','hh24:mi:ss'),to_date('16:00:00','hh24:mi:ss')),
    TURNO('martes',to_date('7:30:00','hh24:mi:ss'),to_date('16:00:00','hh24:mi:ss')),
    TURNO('miercoles',to_date('7:30:00','hh24:mi:ss'),to_date('16:00:00','hh24:mi:ss')),
    TURNO('jueves',to_date('7:30:00','hh24:mi:ss'),to_date('16:00:00','hh24:mi:ss')),
    TURNO('viernes',to_date('7:30:00','hh24:mi:ss'),to_date('16:00:00','hh24:mi:ss'))
        ),
        4);

insert into CHOCOLATERIA (precio_kg,precio_esp,nombre,logo,contacto,fecha_fundacion, direccion,horarios,id_lugar) values 
(87.24,
PRECIO_NT(
    PRECIO(74,'sin azucar'),
    PRECIO(87,'limon'),
    PRECIO(95,'cafe'),
    PRECIO(100,'cocosette'),
    PRECIO(105,'licor')),
'Bomboneria Santa',
BFILENAME('direc_imagenes_chocolateria','bomboneria_santa.png'),
CONTAC_ARRAY(
    CONTAC('bombonerias.santa@gmail.com','607352835')),
to_date('20/03/1932','dd/mm/yyyy'),
DIR('Calle Serrano','unico',56,'local','salamanca'),
HORARIO_NT(
    TURNO('lunes',to_date('10:00:00','hh24:mi:ss'),to_date('19:30:00','hh24:mi:ss')),
    TURNO('martes',to_date('10:00:00','hh24:mi:ss'),to_date('19:30:00','hh24:mi:ss')),
    TURNO('miercoles',to_date('10:00:00','hh24:mi:ss'),to_date('19:30:00','hh24:mi:ss')),
    TURNO('jueves',to_date('10:00:00','hh24:mi:ss'),to_date('19:30:00','hh24:mi:ss')),
    TURNO('viernes',to_date('10:00:00','hh24:mi:ss'),to_date('19:30:00','hh24:mi:ss')),
    TURNO('viernes',to_date('11:00:00','hh24:mi:ss'),to_date('20:00:00','hh24:mi:ss'))
)

)