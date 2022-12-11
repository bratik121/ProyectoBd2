/* ===== INSERTS PRODUCTORA INICIO ==*/
insert all 
into PRODUCTORA(id_productora,nombre,logo,mision,tipo,id_lugar) values (10,'club social',BFILENAME('direc_imagenes_productora', 'productora.jpg'),'my mision increible','cacao',58)
into PRODUCTORA(id_productora,nombre,logo,mision,tipo,id_lugar) values (11,'testingabc',BFILENAME('direc_imagenes_productora', 'productora.jpg'),'my mision test','chocolate',1)
select * from dual;
commit;
/* ===== INSERTS PRODUCTORA FIN ==*/