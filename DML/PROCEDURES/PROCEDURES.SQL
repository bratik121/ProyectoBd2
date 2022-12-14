    CREATE OR REPLACE TYPE tipo_bombon AS
    VARRAY(50) OF NUMBER(5);
/

CREATE OR REPLACE TYPE bombon_cant AS
    VARRAY(50) OF NUMBER(5, 2);
/
CREATE OR REPLACE PROCEDURE generar_factura_bombones (
    tipos      tipo_bombon,
    cantidades  bombon_cant,
    chocolateria NUMBER
) IS
    total NUMBER;
    especial INGRED_ARRAY;
    precio_list PRECIO_NT;
BEGIN
    total := 0;
    SELECT precio_esp 
    INTO precio_list 
    from CHOCOLATERIA cho where cho.id_chocolateria = chocolateria;
         dbms_output.put_line('hello');
    END LOOP;
    
    EXCEPTION
    WHEN no_data_found THEN
        BEGIN
            return;
        END;
END generar_factura_bombones;

-- EXEC generar_factura_bombones( tipo_bombon(3, 4), bombon_cant(2, 5), 2 ); --

 
create or replace type bombon_dummy as object(
    cant_kg number(5),
    tipo_precio varchar2(15)

);
/
create or replace type  lista_pedido_bombon as (
    VARRAY(50) of bombon_dummy;
);
/



CREATE OR REPLACE PROCEDURE generar_factura_bombones (
    tipos      tipo_bombon,
    cantidades  bombon_cant,
    chocolateria NUMBER
) IS
    total NUMBER;
    especial INGRED_ARRAY;
    precio_list PRECIO_NT;
BEGIN
    total := 0;
    SELECT precio_esp 
    INTO precio_list 
    from CHOCOLATERIA cho where cho.id_chocolateria = chocolateria;
       FOR i IN 1..tipos.count LOOP
       select Ingrediente_esp into especial from BOMBON_CATALOGO c where c.id_bombon = tipos(i);
        FOR j IN 1..precio_list.count LOOP
            IF ( precio_list(j).ingrediente = especial(j) ) THEN
                dbms_output.put_line('hello');
            END IF;
        END LOOP;
    END LOOP;
    
    EXCEPTION
    WHEN no_data_found THEN
        BEGIN
            return;
        END;
END generar_factura_bombones;