
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
/*REGIONES*/
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (1080,'region','Miranda',58);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (090109,'region','Guayas',593);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (22215,'region','San Martín',51);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (92110,'region','San Diego',1);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (215,'region','pennsylvania',1);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (28001,'region','Madrid',34);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (08014,'region','Barcelona',34);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (1042,'region','Buenos Aires',54);
/*CIUDADES*/
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (1221,'ciudad','Guatire',1080);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (090101,'ciudad','Guayaquil',090109);
insert into LUGAR(codigo,tipo,nombre,codigo_lug_2) values (22601,'ciudad','Juanjui',090101);
commit;