drop table if exists granja;
drop table if exists provincia;
drop table if exists ciudad;

create table granja(
id int primary key auto_increment,
nombre varchar (200) not null,
direccion varchar (3000),
imagen_url varchar (500)
);

insert into granja
(id,nombre,direccion,imagen_url) values 
(1,'LIRIS BRASIL','Granja ubicada a 7.8 km del centro de Cumandá en la vía principal Cumandá - Alausí. Cuenta con galpones automatizados para la crianza de pollitos ','https://media.licdn.com/dms/image/C510BAQEZLC9ceP_wLw/company-logo_200_200/0/1631329473077?e=2147483647&v=beta&t=HjtnVWFtmKLoxCrw0rZJeT3jPLTTcTGopgDNw1CuWwA'),
(2, 'LIRIS PROGRESO','Granja ubicada a 5 minutos de la parroquia Progreso exactamente a 4.3 kilomentros de distancia, cuenta con 3 galpones automatizados','https://media.licdn.com/dms/image/C510BAQEZLC9ceP_wLw/company-logo_200_200/0/1631329473077?e=2147483647&v=beta&t=HjtnVWFtmKLoxCrw0rZJeT3jPLTTcTGopgDNw1CuWwA'),
(3, 'AVIPECHICHAL - SANCAN','Granja localizada a 11 Km de Jipijapa de la provincia de Manabpi, en la vía San Can - Santa Ana, cuenta con tres galpones automatizados','https://www.amnufarvet.com/backend/imgs/IMG-Cliente-2022-04-01-0-28-03.png'),
(4, 'GARLAR','Granja ubicada en el carretero Santa Ana - 24 de Mayo Santa Ana, a 7.7 km de Santa Ana, excactamente a 11 minutos, cuenta con 2 granjas Camino Nuevo y Las Balsas','https://www.mundogallina.net/wp-content/uploads/2021/01/PolloGallooGallina.jpg'),
(5, 'MARIA VICENTE','Distribuidor autorizado en la zona de Balsas, entrega de pollito en la urna el Mirador, ubicado a 1.9 kilometros del centro de Balsas, cantón de la Provincia de El Oro','https://img.goraymi.com/2018/04/28/e44bd6b80797ceacd250855444dc5ae7_xl.jpg'),
(6, 'LUMA DISTRIBUCIONES','Distribuidor autorizado en la Zona del Azuay cercados a la ciudad de Cuenca, ubicados en la Autopista Cuenca - Azogues a 13 km del centro Histórico de Cuenca','https://pr1.nicelocal.ec/B8-NVxnhrdhuDb6rhwXrBQ/1120x700,q85/4px-BW84_n0QJGVPszge3NRBsKw-2VcOifrJIjPYFYkOtaCZxxXQ2ZunEwWinVswfGL02PkdAWI9xdjO_eLOQuFYxKh9NXTb8iV1ZM2M_p6aFJE5E99bLw'),
(7, 'ANGEL MACAS','Distribuidor autorizado en la Zona del Puyo y sus al rededores, la entrega de pollito bb se realiza en la calle Teniente Hugo Ortiz ubicado a 5 km del centro del Puyo','https://img.goraymi.com/2019/03/20/2f492f309f2e4559cc94d3e937c33f1e_xl.jpg'),
(8, 'LIRIS VIOLETA','Gaanja ubicada en el Sitio Safando de Guayaquil, a 2.7 km del centro en la vía a la Costa, cuenta con galpones automatizados con capacidad de 200000 aves','https://media.licdn.com/dms/image/C510BAQEZLC9ceP_wLw/company-logo_200_200/0/1631329473077?e=2147483647&v=beta&t=HjtnVWFtmKLoxCrw0rZJeT3jPLTTcTGopgDNw1CuWwA'),
(9, 'LIRIS DAULAR','Granja ubicada en el Sector Daular de la parroquia Chongón a 20 kg de Chongon vía a la Costa, cuenta con tres galpones automatizados para la recepción de pollito bb ','https://media.licdn.com/dms/image/C510BAQEZLC9ceP_wLw/company-logo_200_200/0/1631329473077?e=2147483647&v=beta&t=HjtnVWFtmKLoxCrw0rZJeT3jPLTTcTGopgDNw1CuWwA'),
(10, 'LIRIS SAN LORENZO','Granja ubicada a 11 km de la parroquia Progreso, sitio San Lorenzo del Mate, vía a la Costa cuenta con 3 granjas San Lorenzo 1,2,3 respectivamente','https://media.licdn.com/dms/image/C510BAQEZLC9ceP_wLw/company-logo_200_200/0/1631329473077?e=2147483647&v=beta&t=HjtnVWFtmKLoxCrw0rZJeT3jPLTTcTGopgDNw1CuWwA'),
(11, 'AVIPECHICHAL MARAVAILLA','Granja pertenciente al cantón Rocafuerte, 10 km del centro del Cantón, cuenta con 5 granjas todas llamadas Maravillas','https://pr0.nicelocal.ec/6NMZkozp4j3R_FOVqbQ0PQ/630x384,q85/4px-BW84_n0QJGVPszge3NRBsKw-2VcOifrJIjPYFYkOtaCZxxXQ2TFvMYSjs2xbj6r6GvSImeQ4iWzp1d4SKTmhlfRO55ioUyPQj3aYtpq9o3CxxwrSMQ'),
(12, 'AVICOLA DON PEDRO','Granja ubicada en Daule, en el km 1.6 via a Laurel,a 16 km del centro de Duran, provincia del Guayas, con galpones aptos para recibir 80000 pollitos bebés','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkblrpoCfKpSMvneANZL7v_2ae4du4OZ6E-KDis2Zcce4zFrebs4YnTErGgl6LKMyu3qU&usqp=CAU')
;


create table ciudad (
id int primary key auto_increment,
nombre varchar (200)
);

insert into ciudad 
(id,nombre) values 
(1, 'Cumandá'),
(2,'Guayaquil'),
(3, 'Jipijapa'),
(4,'Balsas'),
(5, 'Cuenca'),
(6,'Puyo'),
(7,'Daule'),
(8, 'Santa Ana'),
(9, 'Rocafuerte');

create table provincia (

id int primary key auto_increment,
nombre varchar (200)
);

insert into provincia
(id,nombre) values 
(1,'Chimborazo'),
(2, 'Guayas'),
(3, 'Manabí'),
(4, 'El Oro'),
(5, 'Azuay'),
(6,'Pastaza');

alter table granja
add column ciudad_id int ,
add foreign key (ciudad_id) references ciudad (id);

update granja set ciudad_id =1 where id in (1);
update granja set ciudad_id =2 where id in (2,8,9,10);
update granja set ciudad_id =3 where id in (3);
update granja set ciudad_id =4 where id in (5);
update granja set ciudad_id =5 where id in (6);
update granja set ciudad_id =6 where id in (7);
update granja set ciudad_id =7 where id in (12);
update granja set ciudad_id =8 where id in (4);
update granja set ciudad_id =9 where id in (11);

alter table ciudad 
add column provincia_id int,
add foreign key (provincia_id) references provincia (id);

update ciudad set provincia_id =1 where id in (1);
update ciudad set provincia_id =2 where id in (2,7);
update ciudad set provincia_id =3 where id in (3,8);
update ciudad set provincia_id =4 where id in (4);
update ciudad set provincia_id =5 where id in (5);
update ciudad set provincia_id =6 where id in (6);

alter table granja
modify ciudad_id int not null;

alter table ciudad
modify provincia_id int not null;
