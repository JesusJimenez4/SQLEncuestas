drop database Encuestas; 
create database Encuestas; 
use Encuestas;
create table Usuario(
Id int not null primary key identity(1,1), 
Nombre varchar(50) not null,
ApellidoPaterno varchar(50) not null,
ApellidoMaterno varchar(50),
Email varchar(60) not null, 
Estatus varchar(20) not null, 
Rol varchar(50) not null, 
Pass varchar(100)not null,
Foto varchar(500) 

);
create table Categoria(
IdCategoria int not null primary key identity(1,1),
NombreCategoria varchar(80) not null 
);

create table Encuestas(
IdEncuestas int not null primary key identity(1,1),
NombreEncuesta varchar(150) not null, 
EstatusEncuesta varchar (20) not null, 
FechaEntrada date not null,
Id int not null,
IdCategoria int not null, 

constraint fk_Usuario foreign key (Id) references Usuario(Id),
constraint fk_Categoria foreign key (IdCategoria) references Categoria(IdCategoria)

);

create table Preguntas(
IdPregunta int not null primary key identity(1,1), 
Pregunta varchar (100) not null,
IdEncuestas int not null,
constraint fk_Encuestas foreign key (IdEncuestas) references Encuestas(IdEncuestas)
);

create table Respuestas(
IdRespuesta int not null primary key identity(1,1), 
Opcion int not null, 
RespuestaAbierta varchar(100) not null, 
IdPregunta int not null,
constraint fk_Pregunta foreign key (IdPregunta) references Preguntas(IdPregunta)

);


