--
-- Esquema físico de la base de datos
--

-- ENTIDAD: Usuario
create table usuarios (
    id_usuario bigint primary key,
    apellido varchar(255) not null,
    nombre varchar(255) not null,
    telefono varchar(255),
    direccion varchar(255),
    email varchar(255) not null,
    estatus varchar(255),
    gustos text
);

-- ENTIDAD: Organizador (Subclase de Usuario)
create table organizadores (
    id_usuario bigint primary key,
    organizacion varchar(255) not null,
    puesto varchar(255),
    constraint fk_organizador_usuario foreign key (id_usuario) references usuarios (id_usuario)
);

-- ENTIDAD: Administrador (Subclase de Usuario)
create table administradores (
    id_usuario bigint primary key,
    super_nivel varchar(255),
    constraint fk_admin_usuario foreign key (id_usuario) references usuarios (id_usuario)
);

-- ENTIDAD: Eventos
create table eventos (
    id_evento bigint primary key,
    nombre_evento varchar(255) not null,
    costo numeric not null,
    reserva_evento varchar(255),
    popularidad varchar(255),
    categoria varchar(255) not null,
    horario varchar(255) not null,
    direccion varchar(255) not null,
    modalidad varchar(255) not null,
    disponibilidad varchar(255) not null,
    id_organizador bigint not null,
    constraint fk_evento_organizador foreign key (id_organizador) references organizadores (id_usuario)
);

-- ENTIDAD: Calendario (Conexión con Eventos)
create table calendarios (
    id_calendario bigint primary key,
    id_evento bigint not null,
    fecha_inicio timestamp not null,
    fecha_fin timestamp not null,
    constraint fk_calendario_evento foreign key (id_evento) references eventos (id_evento)
);

-- RELACIÓN: Asisten (Mapeo de la relación N:M entre Usuarios y Eventos)
create table asisten (
    id_usuario bigint not null,
    id_evento bigint not null,
    primary key (id_usuario, id_evento),
    constraint fk_asisten_usuario foreign key (id_usuario) references usuarios (id_usuario),
    constraint fk_asisten_evento foreign key (id_evento) references eventos (id_evento)
);