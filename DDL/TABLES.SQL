
/* ===== TABLES ===== */
create table CACAO(
    id_cacao number(5) not null,
    nombre_variedad varchar2(25) not null,
    tipo varchar2(15) not null,
    descripcion varchar2(200) not null,
    id_lugar number(4),
    primary key (id_cacao),
    constraint tipo_cacao check (tipo in ('suave', 'fuerte'))
);

create table HIST_PRECIO(
    id_precio number(5) not null,
    fecha_inicio date not null,
    fecha_fin date,
    precio number(10,2) not null,
    id_cacao number(5),
    id_presentacion number(5),
    id_catl number(5),
    id_productora number(5),
    primary key (id_precio)
);

create table DET_EXPED(
    cantidad number(4) not null,
    frecuencia varchar2(50) not null,
    envios ENVIO_NT,
    id_productora number(5) not null,
    id_cacao number(5) not null,
    id_contr number(4) not null,
    id_chocolateria number(4) not null,
    id_lugar number(4) not null,
    primary key (id_cacao,id_productora,id_contr,id_chocolateria,id_lugar)
) nested table envios store as ENVIO_TAB ;

create or replace table PRODUCTORA(
    id_productora number(5) not null,
    nombre varchar2(25) not null,
    logo Bfile not null,
    mision varchar2(500) not null,
    tipo varchar2(15) not null,
    id_lugar number(4),
    primary key (id_productora),
    constraint tipo_productora check (tipo in ('cacao', 'chocolate', 'ambos'))
);

create table CATAL_CHOCOLATES(
    id_catl number(5) not null,
    nombre varchar2(25) not null,
    tipo varchar2(15) not null,
    manteca_cacao_porc number(3),
    cacao_porc number(3),
    uso_recom varchar2(100) not null,
    clasif_choc CLASIFICACION,
    temperaturas TEMPERATURA_NT,
    id_productora number(5) not null,
    primary key (id_catl,id_productora),
    constraint tipo_chocolate check (tipo in ('blanco', 'negro', 'con_leche'))
) nested table temperaturas store as TEMP_TAB ;

create table PRESENTACION(
    id_presentacion number(5) not null,
    tipo varchar2(10) not null,
    peso_gramos number(5) not null,
    id_catl number(5) not null,
    id_productora number(5) not null,
    primary key (id_presentacion,id_catl,id_productora),
    constraint tipo_presentacion check (tipo in ('tableta', 'gotas', 'chispas', 'polvo'))
);

create table DISPONIBILIDAD_ENV(
    id_disponibilidad number(5) not null,
    id_lugar number(4) not null,
    id_productora number(5),
    id_presentacion number(5),
    id_catl number(5),
    primary key (id_disponibilidad,id_lugar)
);

create or replace table LUGAR(
    codigo number(4) not null,
    tipo varchar2(10) not null,
    nombre varchar2(25) not null,
    continente varchar2(25),
    codigo_lug_2 number(4),
    primary key (codigo),
    constraint tipo_continente check (continente in ('SA', 'NA', 'OCE', 'AS', 'EU', 'AFR'))
);

create table CONTRATO(
    id_contr number(4) not null,
    fecha_emision date not null,
    total number(15) not null,
    estatus varchar2(25) not null,
    id_productora number(5) not null,
    id_chocolateria number(4) not null,
    id_lugar number(4) not null,
    primary key (id_productora,id_contr,id_chocolateria,id_lugar),
    constraint estatus_contrato check (estatus in ('vigente', 'cancelado'))
);

create table COND_PAGO_ENVIO(
    id_cond_pago number(5) not null,
    tipo varchar2(20) not null,
    porc_recargo_env number(3),
    cant_cuotas number(2),
    porc_cuota number(3),
    contado_env number(7),
    contado_años_env number(12),
    id_productora number(5) not null,
    primary key (id_cond_pago,id_productora),
    constraint tipo_pago check (tipo in ('envio', 'pago_contado', 'pago_credito'))
);

create table DET_PEDIDO(
    id_detped number(10) not null,
    cantidad number(4) not null,
    id_presentacion number(5),
    id_catl number(5),
    id_pedido number(8) not null,
    id_chocolateria number(4) not null,
    id_lugar number(4) not null,
    id_productora number(5) not null,
    primary key (id_detped,id_pedido,id_chocolateria,id_lugar,id_productora)
);

create table DET_FACTURA(
    id_det_factura number(10) not null,
    lotes LOTE_NT,
    id_fac number(8) not null,
    id_pedido number(8) not null,
    id_chocolateria number(4) not null,
    id_lugar number(4) not null,
    id_productora number(5) not null,
    primary key (id_det_factura,id_fac,id_pedido,id_chocolateria,id_lugar,id_productora)
) nested table lotes store as LOTE_TAB ;

create table FORMULA(
    id_formula number(4) not null,
    calidad_material_porc number(3) not null,
    cumplimiento_porc number(3) not null,
    precio_porc number(3) not null,
    condicion_envio_pago varchar2(100) not null,
    aceptacion_porc number(3) not null,
    Rango_Esp_Sup number(3) not null,
    Rango_Esp_Inf number(3) not null,
    id_chocolateria number(4) not null,
    id_lugar number(4) not null,
    id_productora number(5),
    primary key (id_formula,id_chocolateria,id_lugar)
);

create table CHOCOLATERIA(
    id_chocolateria number(4) GENERATED AS IDENTITY (START WITH 1 INCREMENT BY 1) not null,
    precio_kg number(4,2) not null,
    precio_esp PRECIO_NT,
    nombre varchar2(25) not null,
    logo Bfile not null,
    contacto CONTAC_ARRAY,
    fecha_fundacion date not null,
    direccion DIR,
    horarios HORARIO_NT,
    id_lugar number(8) not null,
    primary key (id_chocolateria,id_lugar)
) nested table horarios store as HORARIO_TAB 
  nested table precio_esp store as PRECIO_TAB;

create table PEDIDO(
    id_pedido number(8) not null,
    fecha_emision date not null,
    fecha_deseada date not null,
    cond_envio varchar2(50) not null,
    estatus varchar2(20) not null,
    fecha_env_estim date not null,
    fecha_env_real date not null,
    id_chocolateria number(4) not null,
    id_lugar number(4) not null,
    id_productora number(5) not null,
    primary key (id_pedido,id_productora,id_chocolateria,id_lugar),
    constraint estatus_pedido check (estatus in ('aceptado', 'rechazado', 'en_espera'))
);

create table FACTURA(
    id_fac number(8) not null,
    fecha_emision date not null,
    monto_Total number(10) not null,
    id_pedido number(8) not null,
    id_chocolateria number(4) not null,
    id_lugar number(4) not null,
    id_productora number(5) not null,
    primary key (id_fac,id_pedido,id_chocolateria,id_lugar,id_productora)
);

create table FACT_BOMBONES(
    id_fact_bombon number(10) not null,
    fecha_emision date not null,
    monto number(6) not null,
    detalles DETALLE_NT,
    id_chocolateria number(4) not null,
    id_lugar number(4) not null,
    primary key (id_fact_bombon,id_chocolateria,id_lugar)
) nested table detalles store as DET_TAB ;

create table BOMBON_CATALOGO(
    id_bombon number(5) not null,
    nombre varchar2(25) not null,
    tipo_chocolate varchar2(30) not null,
    nom_coleccion varchar2(25),
    foto Bfile not null,
    Ingrediente_esp INGRED_ARRAY,
    descripcion varchar2(200) not null,
    precio_kg number(4) not null,
    votos VOTO_NT,
    id_chocolateria number(4) not null,
    id_lugar number(4) not null,
    primary key (id_bombon,id_chocolateria,id_lugar)
) nested table votos store as VOTO_TAB;

create table PAGO(
    id_pago number(10) not null,
    fecha date not null,
    monto number(6) not null,
    id_fac number(8) not null,
    id_pedido number(8) not null,
    id_chocolateria number(4) not null,
    id_lugar number(4) not null,
    id_productora number(5) not null,
    primary key (id_pago,id_fac,id_pedido,id_chocolateria,id_lugar,id_productora)
);

create table PED_ACEPTADO(
    id_acep number(8) not null,
    fecha_promet date not null,
    fecha_entr date,
    id_pedido number(8) not null,
    id_chocolateria number(4) not null,
    id_lugar number(4) not null,
    id_productora number(5) not null,
    primary key (id_acep,id_pedido,id_chocolateria,id_lugar,id_productora)
);

create table PED_RECHAZADO(
    id_rchaz number(8) not null,
    razon varchar2(150) not null,
    id_pedido number(8) not null,
    id_chocolateria number(4) not null,
    id_lugar number(4) not null,
    id_productora number(5) not null,
    primary key (id_rchaz,id_chocolateria,id_lugar,id_productora)
);

create table PROD_CACAO(
    id_productora number(5) not null,
    id_cacao number(5) not null,
    primary key (id_productora,id_cacao)
);

create table COND_CONT(
    id_cond_pago number(5) not null,
    id_productora number(5) not null,
    id_contr number(4) not null,
    id_chocolateria number(4) not null,
    id_lugar number(4) not null,
    primary key (id_cond_pago,id_productora,id_contr,id_chocolateria,id_lugar)
);

create table COND_PED(
    id_cond_pago number(5) not null,
    id_productora number(5) not null,
    id_pedido number(6) not null,
    id_chocolateria number(4) not null,
    id_lugar number(4) not null,
    primary key (id_cond_pago,id_productora,id_pedido,id_chocolateria,id_lugar)
);
/* ===== TABLES FIN ===== */


/* ===== FOREING KEYS ===== */
alter table PROD_CACAO
	add foreign key (id_cacao)
		references CACAO (id_cacao);
        
alter table PROD_CACAO
    add foreign key (id_productora)
		references PRODUCTORA (id_productora);
        
alter table CACAO
	add foreign key (id_lugar)
		references LUGAR (codigo);
        
alter table DET_EXPED
	add foreign key (id_cacao, id_productora)
		references PROD_CACAO (id_cacao, id_productora);
        
alter table DET_EXPED
	add foreign key (id_contr,id_chocolateria,id_lugar,id_productora)
		references CONTRATO (id_contr,id_chocolateria,id_lugar,id_productora);

alter table HIST_PRECIO
	add foreign key (id_cacao)
		references CACAO (id_cacao);
        
alter table HIST_PRECIO
	add foreign key (id_presentacion,id_catl,id_productora)
		references PRESENTACION (id_presentacion,id_catl,id_productora);
        
alter table PRODUCTORA
	add foreign key (id_lugar)
		references LUGAR (codigo);
        
alter table LUGAR
	add foreign key (codigo_lug_2)
		references LUGAR (codigo);

alter table CONTRATO
	add foreign key (id_productora)
		references PRODUCTORA (id_productora);
        
alter table CONTRATO
	add foreign key (id_chocolateria,id_lugar)
		references CHOCOLATERIA (id_chocolateria,id_lugar);
        
alter table PED_RECHAZADO
	add foreign key (id_pedido,id_chocolateria,id_lugar,id_productora)
		references PEDIDO (id_pedido,id_chocolateria,id_lugar,id_productora);

alter table PED_ACEPTADO
	add foreign key (id_pedido,id_chocolateria,id_lugar,id_productora)
		references PEDIDO (id_pedido,id_chocolateria,id_lugar,id_productora);
        
alter table PEDIDO
	add foreign key (id_productora)
		references PRODUCTORA (id_productora);

alter table PEDIDO
	add foreign key (id_chocolateria,id_lugar)
		references CHOCOLATERIA (id_chocolateria,id_lugar);
        
alter table FORMULA
	add foreign key (id_productora)
		references PRODUCTORA (id_productora);
        
alter table FORMULA
	add foreign key (id_chocolateria,id_lugar)
		references CHOCOLATERIA (id_chocolateria,id_lugar);
        
alter table FACT_BOMBONES 
	add foreign key (id_chocolateria,id_lugar)
		references CHOCOLATERIA (id_chocolateria,id_lugar);

alter table BOMBON_CATALOGO
	add foreign key (id_chocolateria,id_lugar)
		references CHOCOLATERIA (id_chocolateria,id_lugar);
       
alter table PAGO
	add foreign key (id_fac,id_pedido,id_chocolateria,id_lugar,id_productora)
		references FACTURA (id_fac,id_pedido,id_chocolateria,id_lugar,id_productora);

alter table FACTURA
	add foreign key (id_pedido,id_chocolateria,id_lugar,id_productora)
		references PEDIDO (id_pedido,id_chocolateria,id_lugar,id_productora);
       
alter table CHOCOLATERIA
	add foreign key (id_lugar)
		references LUGAR (codigo);
        
alter table COND_PED
	add foreign key (id_cond_pago,id_productora)
		references COND_PAGO_ENVIO (id_cond_pago,id_productora);
        
alter table COND_PED
    add foreign key (id_pedido,id_chocolateria,id_lugar,id_productora)
		references PEDIDO (id_pedido,id_chocolateria,id_lugar,id_productora);

alter table DET_FACTURA
    add foreign key (id_fac,id_pedido,id_chocolateria,id_lugar,id_productora)
		references FACTURA (id_fac,id_pedido,id_chocolateria,id_lugar,id_productora);
        
alter table DET_PEDIDO
    add foreign key (id_pedido,id_chocolateria,id_lugar,id_productora)
		references PEDIDO (id_pedido,id_chocolateria,id_lugar,id_productora);

alter table DET_PEDIDO
    add foreign key (id_presentacion,id_catl,id_productora)
		references PRESENTACION (id_presentacion,id_catl,id_productora);
        
alter table COND_CONT
	add foreign key (id_cond_pago,id_productora)
		references COND_PAGO_ENVIO (id_cond_pago,id_productora);
        
alter table COND_CONT
    add foreign key (id_contr,id_chocolateria,id_lugar,id_productora)
		references CONTRATO (id_contr,id_chocolateria,id_lugar,id_productora);
        
alter table COND_PAGO_ENVIO
    add foreign key (id_productora)
		references PRODUCTORA (id_productora);
           
alter table CATAL_CHOCOLATES
    add foreign key (id_productora)
		references PRODUCTORA (id_productora);
        
alter table PRESENTACION
    add foreign key (id_catl,id_productora)
		references CATAL_CHOCOLATES (id_catl,id_productora);
  
alter table DISPONIBILIDAD_ENV
	add foreign key (id_lugar)
		references LUGAR (codigo);

alter table DISPONIBILIDAD_ENV
    add foreign key (id_productora)
		references PRODUCTORA (id_productora);

alter table DISPONIBILIDAD_ENV
	add foreign key (id_presentacion,id_catl,id_productora)
		references PRESENTACION (id_presentacion,id_catl,id_productora);
/* ===== FOREING KEYS FIN ===== */

/* ===== Constraints ===== */

