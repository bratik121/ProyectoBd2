
/* ===== INSERTS LUGARES ===== */
/*PAISES*/
insert into LUGAR(codigo,tipo,nombre,continente) values (58,'pais','Venezuela','SA');
insert into LUGAR(codigo,tipo,nombre,continente) values (593,'pais','Ecuador','SA');
insert into LUGAR(codigo,tipo,nombre,continente) values (51,'pais','Peru','SA');
insert into LUGAR(codigo,tipo,nombre,continente) values (45,'pais','Dinamarca','EU');
insert into LUGAR(codigo,tipo,nombre,continente) values (57,'pais','Colombia','SA');
insert into LUGAR(codigo,tipo,nombre,continente) values (41,'pais','Suiza','EU');
insert into LUGAR(codigo,tipo,nombre,continente) values (1,'pais','Estados Unidos','NA');
insert into LUGAR(codigo,tipo,nombre,continente) values (34,'pais','España','EU');
insert into LUGAR(codigo,tipo,nombre,continente) values (54,'pais','Argentina','SA');
insert into LUGAR(codigo,tipo,nombre,continente) values (351,'pais','Portugal','EU');
insert into LUGAR(codigo,tipo,nombre,continente) values (233,'pais','Ghana','AFR');
insert into LUGAR(codigo,tipo,nombre,continente) values (868,'pais','Trinidad y Tobago','SA');
insert into LUGAR(codigo,tipo,nombre,continente) values (809,'pais','Republica Dominicana','SA');
insert into LUGAR(codigo,tipo,nombre,continente) values (1876,'pais','Jamaica','SA');
insert into LUGAR(codigo,tipo,nombre,continente) values (62,'pais','Indonesia','AS');
insert into LUGAR(codigo,tipo,nombre,continente) values (237,'pais','Camerún','AFR');
/*REGIONES*/
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (1080,'region','Miranda',58);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (90109,'region','Guayas',593);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (22215,'region','San Martín',51);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (92110,'region','San Diego',1);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (215,'region','pennsylvania',1);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (28001,'region','Madrid',34);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (8014,'region','Barcelona',34);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (1042,'region','Buenos Aires',54);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (20074,'region','Washington',54);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (4000,'region','Oporto',351);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (30,'region','Accra',233);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (5115,'region','Merida',58);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (4004,'region','Zulia',58);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (17844,'region','Java',62);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (36502,'region','Mamfe',237);
/*CIUDADES*/
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (1221,'ciudad','Guatire',1080);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (90101,'ciudad','Guayaquil',90109);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (22601,'ciudad','Juanjui',90101);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (98108,'ciudad','Seattle',20074);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (4700,'ciudad','Braga',4000);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (4016,'ciudad','Maracaibo',4004);
commit;