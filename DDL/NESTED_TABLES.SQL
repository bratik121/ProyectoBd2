/* ===== NESTED TABLES ===== */
create or replace type DETALLE_NT as table of DETALLE;
/
create or replace type TEMPERATURA_NT as table of TEMP;
/
create or replace type LOTE_NT as table of LOTE;
/
create or replace type PRECIO_NT as table of PRECIO;
/
create or replace type VOTO_NT as table of VOTO;
/
create or replace type ENVIO_NT as table of ENVIO;
/
create or replace type HORARIO_NT as table of TURNO;
/
/* ===== NESTED TABLES FIN ===== */