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
    CONTAC('ventas@lacasadelchocolate.com',02122423492,02122443657),
    CONTAC('',02122444289,null)),
to_date('01/05/2017','dd/mm/yyyy'),
DIR('Calle Araure','2A',2423492,'C.C.SAIVA','Panaquirle'),
HORARIO_NT(
    TURNO('lunes',to_date('7:30:00','hh24:mi:ss'),to_date('16:00:00','hh24:mi:ss')),
    TURNO('martes',to_date('7:30:00','hh24:mi:ss'),to_date('16:00:00','hh24:mi:ss')),
    TURNO('miercoles',to_date('7:30:00','hh24:mi:ss'),to_date('16:00:00','hh24:mi:ss')),
    TURNO('jueves',to_date('7:30:00','hh24:mi:ss'),to_date('16:00:00','hh24:mi:ss')),
    TURNO('viernes',to_date('7:30:00','hh24:mi:ss'),to_date('16:00:00','hh24:mi:ss'))),
        1080);

insert into CHOCOLATERIA (precio_kg,precio_esp,nombre,logo,contacto,fecha_fundacion, direccion,horarios,id_lugar) values 
(87.24,
PRECIO_NT(
    PRECIO(74,'sin azucar'),
    PRECIO(87,'avellana'),
    PRECIO(95,'ron'),
    PRECIO(105,'licor')),
'Bomboneria Santa',
BFILENAME('direc_imagenes_chocolateria','bomboneria_santa.png'),
CONTAC_ARRAY(
    CONTAC('bombonerias.santa@gmail.com',607352835,915768646)),
to_date('20/03/1932','dd/mm/yyyy'),
DIR('Calle Serrano','unico',56,'local','salamanca'),
HORARIO_NT(
    TURNO('lunes',to_date('10:00:00','hh24:mi:ss'),to_date('19:30:00','hh24:mi:ss')),
    TURNO('martes',to_date('10:00:00','hh24:mi:ss'),to_date('19:30:00','hh24:mi:ss')),
    TURNO('miercoles',to_date('10:00:00','hh24:mi:ss'),to_date('19:30:00','hh24:mi:ss')),
    TURNO('jueves',to_date('10:00:00','hh24:mi:ss'),to_date('19:30:00','hh24:mi:ss')),
    TURNO('viernes',to_date('10:00:00','hh24:mi:ss'),to_date('19:30:00','hh24:mi:ss')),
    TURNO('sabado',to_date('11:00:00','hh24:mi:ss'),to_date('20:00:00','hh24:mi:ss'))
),
28001);

INSERT INTO CHOCOLATERIA (precio_kg,precio_esp,nombre,logo,contacto,fecha_fundacion, direccion,horarios,id_lugar) VALUES 
(66.6,
PRECIO_NT(
    PRECIO(71.3,'almendras al cacao'),
    PRECIO(60.3,'sin azicar'),
    PRECIO(69,'mantequilla'),
    PRECIO(73.2,'licor'),
    PRECIO(80,'soja')),
'Bomboneria Pons',
BFILENAME('direc_imagenes_chocolateria','bomboneria_pons.png'),
CONTAC_ARRAY(
    CONTAC('tienda@bomboneriapons.com',933327046,null)),
to_date('03/08/1960','dd/mm/yyyy'),
DIR('Calle Olzinelles','unico',78,'local','la bordeta'),
HORARIO_NT(
    TURNO('lunes',to_date('8:00:00','hh24:mi:ss'),to_date('20:00:00','hh24:mi:ss')),
    TURNO('martes',to_date('8:00:00','hh24:mi:ss'),to_date('20:00:00','hh24:mi:ss')),
    TURNO('miercoles',to_date('8:00:00','hh24:mi:ss'),to_date('20:00:00','hh24:mi:ss')),
    TURNO('jueves',to_date('8:00:00','hh24:mi:ss'),to_date('20:00:00','hh24:mi:ss')),
    TURNO('viernes',to_date('8:00:00','hh24:mi:ss'),to_date('20:00:00','hh24:mi:ss')),
    TURNO('sabado',to_date('9:00:00','hh24:mi:ss'),to_date('19:00:00','hh24:mi:ss'))
),
08014);

INSERT INTO CHOCOLATERIA (precio_kg,precio_esp,nombre,logo,contacto,fecha_fundacion, direccion,horarios,id_lugar) VALUES 
(62.7,
PRECIO_NT(
    PRECIO(72.3,'anis'),
    PRECIO(65,'cafe amargo'),
    PRECIO(69.7,'nuez'),
    PRECIO(78,'almendras'),
    PRECIO(65,'naranja')),
'Bombonella',
BFILENAME('direc_imagenes_chocolateria','bombonella.jpg'),
CONTAC_ARRAY(
    CONTAC('bbombonella@hotmail.com',64928386,43710633)),
to_date('19/07/1928','dd/mm/yyyy'),
DIR('Corrientes','unico',1479,'local','la bordeta'),
HORARIO_NT(
    TURNO('lunes',to_date('9:00:00','hh24:mi:ss'),to_date('20:30:00','hh24:mi:ss')),
    TURNO('martes',to_date('9:00:00','hh24:mi:ss'),to_date('20:30:00','hh24:mi:ss')),
    TURNO('miercoles',to_date('9:00:00','hh24:mi:ss'),to_date('20:30:00','hh24:mi:ss')),
    TURNO('jueves',to_date('9:00:00','hh24:mi:ss'),to_date('20:30:00','hh24:mi:ss')),
    TURNO('viernes',to_date('9:00:00','hh24:mi:ss'),to_date('20:30:00','hh24:mi:ss')),
    TURNO('sabado',to_date('10:00:00','hh24:mi:ss'),to_date('20:30:00','hh24:mi:ss'))
),
1042);

insert into CHOCOLATERIA (precio_kg,precio_esp,nombre,logo,contacto,fecha_fundacion, direccion,horarios,id_lugar) VALUES 
(82.3,
PRECIO_NT(
    PRECIO(110,'champa??a'),
    PRECIO(87.5,'naranja'),
    PRECIO(90,'avellana'),
    PRECIO(92.3,'caramelo suave'),
    PRECIO(95,'caramelo fuerte')),
'Frans Chocolates',
BFILENAME('direc_imagenes_chocolateria','frans_chocolates.png'),
CONTAC_ARRAY(
    CONTAC('janed@franschocolates.com',5084535,null)),
to_date('22/08/1982','dd/mm/yyyy'),
DIR('Airport Way South','unico',5900 ,'local','Georgetown'),
HORARIO_NT(
    TURNO('lunes',to_date('10:00:00','hh24:mi:ss'),to_date('17:00:00','hh24:mi:ss')),
    TURNO('martes',to_date('10:00:00','hh24:mi:ss'),to_date('17:00:00','hh24:mi:ss')),
    TURNO('miercoles',to_date('10:00:00','hh24:mi:ss'),to_date('17:00:00','hh24:mi:ss')),
    TURNO('jueves',to_date('10:00:00','hh24:mi:ss'),to_date('17:00:00','hh24:mi:ss')),
    TURNO('viernes',to_date('10:00:00','hh24:mi:ss'),to_date('17:00:00','hh24:mi:ss')),
    TURNO('sabado',to_date('10:00:00','hh24:mi:ss'),to_date('17:00:00','hh24:mi:ss')),
    TURNO('domingo',to_date('10:00:00','hh24:mi:ss'),to_date('17:00:00','hh24:mi:ss'))
),
98108
);

insert into CHOCOLATERIA (precio_kg,precio_esp,nombre,logo,contacto,fecha_fundacion, direccion,horarios,id_lugar) VALUES 
(75.74,
PRECIO_NT(
    PRECIO(79.42,'aceite aromatizado'),
    PRECIO(85.74,'frutos rojos'),
    PRECIO(82.34,'queso'),
    PRECIO(80,'parchita'),
    PRECIO(90,'licor con pimienta')),
    'Chocolate com pimenta',
BFILENAME('direc_imagenes_chocolateria','chocolate_com_pimenta.png'),
CONTAC_ARRAY(
    CONTAC('geral@chocolatecompimenta.pt',312017,4730684),
    CONTAC('chocolatecompimenta.vvd@gmail.com',null, null)),
to_date('01/07/2014','dd/mm/yyyy'),
DIR('Avenida Professor Machado Vilela','unico',147,'local','Vila verde'),
HORARIO_NT(
    TURNO('martes',to_date('10:00:00','hh24:mi:ss'),to_date('20:00:00','hh24:mi:ss')),
    TURNO('miercoles',to_date('10:00:00','hh24:mi:ss'),to_date('20:00:00','hh24:mi:ss')),
    TURNO('jueves',to_date('10:00:00','hh24:mi:ss'),to_date('20:00:00','hh24:mi:ss')),
    TURNO('viernes',to_date('10:00:00','hh24:mi:ss'),to_date('20:00:00','hh24:mi:ss')),
    TURNO('sabado',to_date('10:00:00','hh24:mi:ss'),to_date('20:00:00','hh24:mi:ss')),
    TURNO('domingo',to_date('10:00:00','hh24:mi:ss'),to_date('20:00:00','hh24:mi:ss'))
)4700
);


