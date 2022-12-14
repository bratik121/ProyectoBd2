--------/* INSERTS DE BOMBON CATALOGO */-------------


-------------------/* INSERTS DE LA CASA DEL CHOCOLATE */---------------------

INSERT INTO BOMBON_CATALOGO(nombre,tipo_chocolate,nom_coleccion,foto,Ingrediente_esp,descripcion,precio_kg,votos,id_chocolateria,id_lugar) values
(
    'frutos secos',
    'chocolate con leche',
    'frutos de otoño',
    BFILENAME('direc_imagenes_bombom_catalogo','frutos_secos.jpg'),
    INGRED_ARRAY('almendra','avellana','nuez'),
    'Bombones de chocolate claro, rellenos de diversos frutos secos y decorados con topings acaramelados de distintos colores.',
    5.1,
    VOTO_NT(
        VOTO(14,5,2007),
        VOTO(18,6,2007),
        VOTO(30,7,2007),
        VOTO(40,4,2008),
        VOTO(24,11,2008),
        VOTO(17,2,2009)
    ),
    2,
    1080
);

INSERT INTO BOMBON_CATALOGO(nombre,tipo_chocolate,nom_coleccion,foto,Ingrediente_esp,descripcion,precio_kg,votos,id_chocolateria,id_lugar) values
(   
    'licores', 
    'chocolate oscuro',
    'licores festivos',
    BFILENAME('direc_imagenes_bombom_catalogo','licores.jpg'),
    INGRED_ARRAY('anis','ron','vodka','tequila'),
    'Bombones de chocolate oscuro y fuerte, rellenos de licor de una diversas variedad de nuestros mejores licores que se vierten en tu paladar al momento de morder el bombon.',
    4.3,
    VOTO_NT(
        VOTO(30,5,2007),
        VOTO(24,6,2008),
        VOTO(28,7,2008),
        VOTO(20,4,2008),
        VOTO(50,11,2009),
        VOTO(60,2,2009)
    ),
    2,
    1080
    );

INSERT INTO BOMBON_CATALOGO(nombre,tipo_chocolate,nom_coleccion,foto,Ingrediente_esp,descripcion,precio_kg,votos,id_chocolateria,id_lugar) values
(
    'cafe',
    'chocolate con leche',
    'mañanera y matutina',
    BFILENAME('direc_imagenes_bombom_catalogo','cafe.jpeg'),
    INGRED_ARRAY('cafe'),
    'Bombones elebaorados de la mezcla de un suave chocolate con leche y un fuerte cafe venezolano, ideal para empezar el dia o como una merienda matutina siempre acompañado de un buen cafe',
    4.5,
    VOTO_NT(
        VOTO(10,2,2007),
        VOTO(60,5,2008),
        VOTO(24,6,2008),
        VOTO(38,12,2008),
        VOTO(70,11,2009),
        VOTO(9,2,2009)
    ),
    2,
    1080
); 

INSERT INTO BOMBON_CATALOGO(nombre,tipo_chocolate,nom_coleccion,foto,Ingrediente_esp,descripcion,precio_kg,votos,id_chocolateria,id_lugar) values
(
    'limon y cereza',
    'chocolate con leche',
    'navideña',
    BFILENAME('direc_imagenes_bombom_catalogo','limon_y_cereza.jpg'),
    INGRED_ARRAY('limon','cereza'),
    'Bombones de chocolate claro, rellenos de cereza y una mermelada de limon para teber un exquisito equilibro entre lo dulce y lo acido.',
    4.8,
    VOTO_NT(
        VOTO(50,2,2007),
        VOTO(70,12,2007),
        VOTO(35,10,2008),
        VOTO(80,12,2008),
        VOTO(14,11,2009),
        VOTO(10,2,2009)
    ),
    2,
    1080
);

INSERT INTO BOMBON_CATALOGO(nombre,tipo_chocolate,nom_coleccion,foto,Ingrediente_esp,descripcion,precio_kg,votos,id_chocolateria,id_lugar) values
(
    'coco y cocosette',
    'chocolate blanco',
    'coco extravaganza',
    BFILENAME('direc_imagenes_bombom_catalogo','coco.jpg'),
    INGRED_ARRAY('coco','cocosette'),
    'Bombones de chocolate blanco hechos a base de una mezcla de cocosette y de corados con un topping de coco rallado',
    5.5,
    VOTO_NT(
        VOTO(20,2,2007),
        VOTO(25,6,2007),
        VOTO(28,9,2007),
        VOTO(45,12,2007),
        VOTO(50,1,2009),
        VOTO(63,4,2009)
    ),
    2,
    1080
);

-------------------/* INSERTS DE BOMBONERIA SANTA */---------------------

INSERT INTO BOMBON_CATALOGO(nombre,tipo_chocolate,nom_coleccion,foto,Ingrediente_esp,descripcion,precio_kg,votos,id_chocolateria,id_lugar) values
(
    'mentolado',
    'chocolate relleno',
    'frescura',
    BFILENAME('direc_imagenes_bombom_catalogo','menta.jpg'),
    INGRED_ARRAY('crema de menta'),
    'Bombones que constan de una dulce cubierta de chocolate con leche rellenos de una crema de menta, ideal para los amantes de la menta y de los bombones.',
    4.9,
    VOTO_NT(
        VOTO(57,5,2007),
        VOTO(47,6,2007),
        VOTO(24,7,2008),
        VOTO(40,8,2008),
        VOTO(15,11,2008),
        VOTO(32,1,2009)
    ),
    3,
    28001
);


INSERT INTO BOMBON_CATALOGO(nombre,tipo_chocolate,nom_coleccion,foto,Ingrediente_esp,descripcion,precio_kg,votos,id_chocolateria,id_lugar) values
(
    'con forma de corazon',
    'chocolate con leche',
    'amores de verano',
    BFILENAME('direc_imagenes_bombom_catalogo','corazon.jpg'),
    INGRED_ARRAY('chocolate con leche'),
    'Bombones de chocolate chocolate con leche en forma de corazon ideales para demostrarle a esa persona especial cuanto aprecio se le tiene con este delicioso dulce',
    4.5,
    VOTO_NT(
        VOTO(70,2,2007),
        VOTO(90,2,2008),
        VOTO(45,7,2008),
        VOTO(20,4,2008),
        VOTO(50,11,2009),
        VOTO(60,2,2009)
    ),
    3,
    28001
);

INSERT INTO BOMBON_CATALOGO(nombre,tipo_chocolate,nom_coleccion,foto,Ingrediente_esp,descripcion,precio_kg,votos,id_chocolateria,id_lugar) values
(
    'caramelizados',
    'chocolate oscuro',
    'amores de verano',
    BFILENAME('direc_imagenes_bombom_catalogo','caramelo_rojo.jpg'),
    INGRED_ARRAY('caramelo de cereza'),
    'Bombones de chocolate oscuro con una cuebierta de caramelo rojo hecho a base de cereza, lo que le da al bombon un rojo apasionado para mostrarle a esa persona especial cuan apasionado se esta por ella',
    4.7,
    VOTO_NT(
        VOTO(65,2,2007),
        VOTO(82,2,2008),
        VOTO(18,7,2008),
        VOTO(30,4,2008),
        VOTO(50,11,2009),
        VOTO(98,2,2009)
    ),
    3,
    28001
);

INSERT INTO BOMBON_CATALOGO (nombre,tipo_chocolate,nom_coleccion,foto,Ingrediente_esp,descripcion,precio_kg,votos,id_chocolateria,id_lugar) values
(
    'frutos refrescantes',
    'chocolate con leche',
    'bahia tropical',
    BFILENAME('direc_imagenes_bombom_catalogo','corazon.jpg'),
    INGRED_ARRAY('mango','fresa','kiwi'),
    'Bombones de chocolate con leche con una cubierta de caramelo hecha a base de distintas frutas como el mango, la fresa y el kiwi, lo que le da un sabor refrescante y tropical a este delicioso bombon',
    5.5,
    VOTO_NT(
        VOTO(58,4,2007),
        VOTO(90,5,2008),
        VOTO(57,6,2008),
        VOTO(62,5,2009),
        VOTO(80,6,2009),
        VOTO(74,7,2009)
    ),
    3,
    28001
);

INSERT INTO BOMBON_CATALOGO (nombre,tipo_chocolate,nom_coleccion,foto,Ingrediente_esp,descripcion,precio_kg,votos,id_chocolateria,id_lugar) values
(
    'chocolate con leche',
    'chocolate con leche',
    'bahia tropical',
    BFILENAME('direc_imagenes_bombom_catalogo','choco_leche.jpg'),
    INGRED_ARRAY('chocolate con leche'),
    'Bombones de chocolate con leche con una cubierta de caramelo hecha a base de chocolate con leche, lo que le da un sabor dulce y agradable a este delicioso bombon',
    5.5,
    VOTO_NT(
        VOTO(58,4,2007),
        VOTO(90,5,2008),
        VOTO(57,6,2008),
        VOTO(62,5,2009),
        VOTO(80,6,2009),
        VOTO(74,7,2009)
    ),
    3,
    28001
);


