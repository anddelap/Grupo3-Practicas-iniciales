/*create database proyecto;
*/
use proyecto;
create table Consola(
	idConsola int auto_increment not null,
    nombre varchar(45),
    primary key(idConsola)
);

create table Juego(
	 idJuego int auto_increment not null,
     nombre varchar(45),
     descripcion varchar(445),
     cartucho varchar(245),
     fecha int,
     idConsola int not null,
     primary key(idJuego),
     foreign key(idConsola) references Consola(idConsola)
);

create table Usuario(
	idUsuario int auto_increment not null,
    nombre varchar(45),
    username varchar(45),
    correo varchar(45),
    contrasenia varchar(45),
    biografia varchar(45),
    fecha date,
    primary key(idUsuario)
);

create table Biblioteca(
	idBiblioteca int not null auto_increment,
    idUsuario int not null,
    idJuego int not null,
    puntuacion int,
    opinion varchar(45),
    primary key(idBiblioteca),
    foreign key(idUsuario) references Usuario(idUsuario),
    foreign key(idJuego) references Juego(idJuego)
);

create table Publicacion(
	idPublicacion int not null auto_increment,
    fecha date,
    idUsuario int not null,
    idJuego int not null,
    comentario varchar(45),
    primary key(idPublicacion),
    foreign key(idUsuario) references Usuario(idUsuario),
    foreign key(idJuego) references Juego(idJuego)
);

create table Comentario(
	idComentario int not null auto_increment,
    idUsuario int not null,
    idPublicacion int not null,
    comentario varchar(45),
    primary key(idComentario),
    foreign key(idUsuario) references Usuario(idUsuario),
    foreign key(idPublicacion) references Publicacion(idPublicacion)
);

INSERT INTO Consola (nombre)
VALUES ("Playstation ");

INSERT INTO Consola (nombre)
VALUES ("ARCADE ");

INSERT INTO Consola (nombre)
VALUES ("Nintendo 64 ");


INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Digimon Adventure ", "¡Prepárate para otra gran aventura de Game Boy Advance! Tu objetivo en este juego clásico es ayudar a Agumon a derrotar a todos los Digimon rivales.Usa tus habilidades principales como bolas de fuego contra todos los enemigos y salta hábilmente a través de plataformas para evitar perder el juego. ", "https://elpalomitron.com/wp-content/uploads/2021/01/primera-temporada-de-Digimon-llega-a-Crunchyroll-destacada-El-Palomitron.jpg" , 1982, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Sonic Classic Heroes ", "¡Prepárate para una gran aventura con los personajes clásicos de Sonic, Tails y Knuckles! En esta versión puedes jugar con Sonic 1 y Sonic 2 con tus tres héroes favoritos. Además, es posible cambiar los personajes durante los movimientos para usar sus habilidades especiales a través de los obstáculos que se avecinan. ", "https://ae01.alicdn.com/kf/H7286fb1291d7491581742cdddc20f66cL/Cartucho-de-juego-Sonic-Classic-Heroes-de-16-bits-para-consolas-de-sistemas-Sega-MegaDrive-y.jpg_Q90.jpg_.webp " , 1986, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Ninja Council 2 ", "Tu desafío es luchar contra varios rivales en combate y así completar todo tu entrenamiento para arruinar los malvados planes del poderoso Orochimaru. Además, en combate es posible cambiar de Naruto a Sakuro o incluso a Sasuke. Usa todas las habilidades especiales de cada luchador para eliminar a todos tus enemigos. ", "https://data.gameflare.com/games/7541/PF06u4a5gScuPF-400-300.jpg ", 1971, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Kirby & the Amazing Mirror ", "En Kirby & the Amazing Mirror ayuda al clásico Kirby a derrotar a todos los enemigos del mundo del espejo. ¡Vuela, coma a los enemigos y usa todos sus poderes! ", "https://static.wikia.nocookie.net/videojuego/images/0/0b/Kirby_%26_the_Amazing_Mirror.jpg/revision/latest?cb=20080321075635 ", 1979, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Tapman ", "¿Te gusta los Juegos de Pacman? ¡Entonces diviértete en Tapman! ¡Un juego de come come adictivo! En este juego Retro coma todas las bolitas amarillas y evita todos los fantasmas! ", "https://www.classicgame.com/uploaded/thumb/tapman300.jpg ", 1989, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Kirby: Nightmare in Dreamland ", "En este Juego Clásico llamado Kirby: Nightmare in Dreamland ayuda a Kirby a entrar en una gran aventura! Con sus poderes luche contra todos los enemigos. ", "https://cdn02.nintendoeurope.com/media/images/10_share_images/games_15/game_boy_advance_7/SI_GBA_KirbyNightmareInDreamland_image1600w.jpg ", 1991, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Mega Man X ", "Cerca del final de su vida, el Dr. Light logra crear el primero de una nueva serie de robots que cambiarán el mundo. Capaz de pensar y tomar decisiones, este nuevo robot presenta un gran peligro y grandes posibilidades. Temeroso de las posibles consecuencias de desatar su creación en el mundo, el Dr. Light decide sellarlo en una cápsula y probar sus sistemas hasta que sean totalmente confiables. El futuro tendrá que decidir su destino . Liberado de la cápsula por el Dr. Cain, X nace en el mundo del futuro, donde las rebeliones de los robots son cosa del pasado. Pero cuando el Dr. Cain intenta implementar los diseños del Dr. Light en una nueva serie de Reploids, algo sale horriblemente mal. ¡Ahora el futuro está al borde de la destrucción y un nuevo Mega Man debe emerger para enfrentar a Sigma y sus fuerzas antes de que la raza humana sea eliminada del planeta! ", "https://elcomercio.pe/resizer/QSrBimeVkfRYrKCs-cLfC2sIcXY=/1200x675/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/EWY7RASVPBH3ZD2WEXD5E63OQY.jpg ", 1989, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Spider-Man – Mysterio’s Menace ", "En este juego de la GBA Spider-Man - Mysterio's Menace juegue con el héroe Spider-Man! Usa sus telas y fuerza para luchar contra todos los enemigos. ", "https://i.ebayimg.com/images/g/emEAAOSw0axfvPXa/s-l225.jpg ", 1988, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Circus Charlie ", "Circus Charlie es un juego retro muy famoso de 1986, para los fans del Nintendinho (NES) diviértete con este juego de circo súper divertido! ", "https://cloud10.todocoleccion.online/videojuegos-consola-msx/tc/2015/07/03/11/50145035.jpg ", 1986, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Super Punch-Out ", "En Super Punch-Out juegue un Juego de Boxeo de Super Nintendo. ¡Nocautee a todos sus adversarios duros y diviértete! " , "https://media.taringa.net/knn/identity/aHR0cDovL2szMS5rbjMubmV0L3RhcmluZ2EvNS9DL0EvQi8zLzgvRWxfR3JvbmVfZGVfVDIvRUY3LmpwZw", 1974, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Punch-Out ", "En Punch Out juegue un clásico juego del Nintendinho (NES). Da varios golpes en tu oponente hasta ganar el juego. Divertirse! ", "https://i.ebayimg.com/images/g/HmgAAOSwjVRes6lU/s-l300.jpg ", 1980, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Tekken 2", "Te gustan los Juegos de Lucha Tekken 2? ¡Diviértete con este juego de PlayStation super clásico! ¡Lucha con Jun, Paul, Heihachi, Nina, Jack y mucho más! ", "https://1.bp.blogspot.com/-vBPqAhmvHq4/XjsfJbn1MnI/AAAAAAAAIzs/qPvkKUSI5fgZqgjjGM0jkKUe-0i7z5JIACLcBGAsYHQ/s640/tekken2_teambattle_retronewgames.png", 1991, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Pokémon Firered ", "Pokémon Firered es un juego desarrollado por la compañía Game Freak de la serie Pokémon, lanzado el 29 de enero de 2004. Es una versión nueva de Pokémon Red and Green. ¡Sumérgete en la antigua región de Kanto y las islas Sevii! ", "https://www.picclickimg.com/d/l400/pict/193020657933_/POKEMON-Edicion-Rojo-Fuego-Nintendo-Game-Boy-Advance.jpg", 1992, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Super Mario World ", "Super Mario World fue uno de los principales Juegos de Super Nintendo. El juego hizo tanto éxito que se convirtió en el número uno de ventas en la consola. ", "https://lh3.googleusercontent.com/proxy/NmEYf8hLrld1gXSCP_TGjfOwkv1iHXiJyJCSmYLrChzIre8wWc5tbzWSXnaGIw2kIa7vSeG9_9ELCLOIHJmhdQ3B9q54uCqnhMUdlX1OjfgJTL3kQLElK8S2Ybp10Y-cmloh9v3gL2INc4ez7bnDnmhZmgDmNi9KFSIONuwOXjtKTfXIhPx6lKwF3IV2UJcFfIx0uQu7Fo5RRE8H6EUmcBffZNGc-i8d2ulVAAyco6csBCs", 1982, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Galaga ", "Galaga es un videojuego matamarcianos creado en 1981 por la empresa Namco. Fue diseñado como el sucesor del Galaxian (1979). ", "https://i.ebayimg.com/images/g/GxAAAOSw42Nf1SYg/s-l300.jpg ", 1987, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Wonder Boy III: The Dragon's Trap ", "Wonder Boy III: The Dragon's Trap. Una iteración para la saga de Westone que jugó con la magia de un modo muy especial al contar con distintas transformaciones, cada una con sus habilidades. ", "https://www.segasaturno.com/portal/files/images/5050/wonder_boy_lightningamer_1.jpg ", 1985, 1 );

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Pang ", "Pang, también llamado Buster Bros. en América es un videojuego en el que dos jugadores, hermanos, colaboran para destruir las burbujas. Está inspirado en un juego para MSX de 1983 de la empresa japonesa Hudson Soft llamado Cannon Ball) y fue desarrollado en 1989 por Mitchell Corporation. ", "https://media.vandal.net/m/7-2009/2009723213422_1.jpg ", 1980, 3 );

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Strider ", "La leyenda de Hiryu dio comienzo en Strider, un juego de plataformas y acción marca de la casa (Capcom) que deslumbró por el gran tamaño de algunos de sus enemigos finales y de lo enrevesadas que podían ser ciertas fases. Gozó de dos secuelas (una oficial de Capcom en 1999 para PSOne y otra no canónica de US Gold en 1990). Aunque lo mejor fue ver cómo, en pleno 2014, llegaba su fantástico reboot adoptando el estilo metroidvania. ", "https://http2.mlstatic.com/D_NQ_NP_679653-MLM42827616371_072020-W.jpg ", 1979, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Toki ", "El juego del humano que se convertía en gorila. Su reciente remake dejó claro que como plataformas se ha visto superado pese a que sigue siendo un juego bastante exigente difícil de completar. ", "https://media.vandal.net/m/9-2011/201196133055_1.jpg ", 1993, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Castlevania III: Dracula's Curse ", "El videojuego abandona los elementos de juego de aventura de su predecesor inmediato y regresa a la acción de escenarios de estilo plataformas del primer videojuego Castlevania original. A diferencia del videojuego Castlevania, sin embargo, Castlevania III: Dracula's Curse no es estrictamente lineal. Después de completar el primer escenario, y en varios otros puntos a lo largo del videojuego, el jugador tiene la opción de elegir uno de los caminos a tomar a continuación.", "https://as.com/meristation/imagenes/2020/10/31/analisis/1604132871_304537_1604144984_noticia_normal_recorte1.jpg", 2000, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Prince of Persia ", "Un juego que dio paso a la leyenda, la del Príncipe de Persia. Una saga que supo renovarse con el paso de los años gracias a su manipulación del tiempo. Hasta llegó al cine. ", "https://ae01.alicdn.com/kf/HTB1bHu9KpXXXXXpXVXXq6xXFXXXN/Cartucho-de-juego-del-pr-ncipe-de-Persia-tarjeta-de-16-bits-para-Sega-Mega-Drive.jpg", 1989, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("North & South ", "Basado en el cómic belga Les Tuniques Bleues, North & South fue un juego de Infogrames caracterizado por su gran sentido del humor y esa mezcla tan alocada de géneros dentro de un tablero que simulaba el estilo de RISK. Debido a su naturaleza tan aleatoria, era difícil (para la época) que hubiese dos partidas iguales. ", "https://i.pinimg.com/originals/82/90/75/82907534868e7a80b9142468dd675259.jpg ", 1999, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Kick Off ", "Kick Off es un videojuego de fútbol de vista cenital creado por Anco en 1989 y programado por Dino Dini. Se programaron versiones para gran cantidad de sistemas: primero fue Atari ST, después Commodore Amiga y finalmente Amstrad CPC, ZX Spectrum y MS-DOS entre otros. ", "https://cloud10.todocoleccion.online/videojuegos-consola-supernintendo/tc/2017/02/13/18/76006839.jpg ", 1987, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Super Mario Land ", "Si bien se distanció de lo propuesto en los Super Mario Bros. de NES, conservó las bases y hasta dio pie a la experimentación con aquellas partes a modo de shoot em up. ", "https://images-na.ssl-images-amazon.com/images/I/91zsCBIgi2L._SL1500_.jpg ", 1997, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Batman: The Video Game ", "De los múltiples videojuegos oficiales de Batman, basados en la película homónima de Tim Burton, destacó especialmente aquel de NES al que se le sigue recordando por su legendaria dificultad en las últimas fases. ", "https://i.ebayimg.com/images/g/O5QAAOSwyo5f3P~w/s-l300.jpg ", 1980, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Pipe Mania ", "Pipe Mania del estudio The Assembly Line. Porque su mecánica fue toda una novedad y ha sido copiada hasta la saciedad desde entonces, hasta el punto de formar parte de muchos minijuegos, como en el gran BioShock. ", "https://www.retroplace.com/pics/ps2/packshots/136122--pipe-mania.png ", 1978, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Shadow of the Beast ", "Shadow of the Beast es esa clase de juegos que asocias irremediablemente con el Amiga de Commodore. Una aventura que supo aprovechar casi todo su potencial para deslumbrar al personal. Eso sí, era duro como pocos y formó parte de una trilogía memorable por parte de Psygnosis. ", "https://i.ebayimg.com/images/g/7nkAAOSwPnNayPdg/s-l300.jpg ", 1997, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Populous ", "Populous, el simulador de Dios por excelencia. El que lo inició todo. El Big-Bang de Peter Molyneux y una de las obras más reconocibles del mítico estudio Bullfrog Productions. Un juego de estrategia diferente, casi divino, donde optamos por hacer el bien... y también a ahogar a sus habitantes. ", "https://img.zonared.com/images/caratulas/2900/2950-th1.jpg ", 1980, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("DuckTales ", "muy recordado de la etapa de NES es el adorable DuckTales de Capcom, tanto por controlar al tío Gilito haciendo pogo con su bastón, como por la fantástica banda sonora ", "https://cl.buscafs.com/www.levelup.com/public/uploads/images/218533_1140x516.jpg ", 1977, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Super Off Road ", "Bajo el nombre del legendario Ivan "Ironman" Stewart como principal reclamo comercial para dar a conocer este Super Off Road, el estudio Leland Corporation supo crear un juego de carreras arcade de lo más directo y con identidad propia, fácilmente reconocible pese al paso de tantos años. ", "https://i.ebayimg.com/thumbs/images/g/jj0AAOSw2QpgC2~I/s-l300.jpg ", 1990, 2 );

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Teenage Mutant Ninja Turtles ", "la mítica recreativa de las Tortugas Ninja, obra de Konami. Teenage Mutant Ninja Turtles fue un beat 'em up que entraba por la vista y que era disfrutable a lo grande al juntarse con tres personas más. ", "https://sm.ign.com/ign_es/screenshot/default/2362300-nes-tmnt_v6n6.jpg ", 1999, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("LITTLE WITCH ", "El juego de acción de desplazamiento lateral permite a los jugadores controlar a la protagonista del anime, la bruja en entrenamiento Akko, acompañada de sus amigas Sucy, Lotte, Amanda, Constanze, Jasminka y Diana, mientras explora su academia mágica. Hay dos modos de juego distintos: una exploración de la escuela estilo aventura en 3D y un modo de acción 2.5D que implica la exploración de laberintos mágicos con tres personajes. ", "https://img.zonared.com/images/caratulas/6300/6319-th1.jpg ", 1967, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("KAGE LEGEND ", "La historia principal, común a todas las versiones, está ambientada en el Japón medieval. Trata sobre un ninja llamado Kage que se ve obligado a rescatar a la princesa Kirihime, quien ha sido raptada por seres místicos o demonios. ", "https://i.pinimg.com/originals/f2/68/53/f268538b210aaef5ef882aa3efb8fb05.jpg ", 1978, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Adventure Island II ", "Adventure Island II es un videojuego hecho por Hudson Soft para la videoconsola NES y para Game Boy. El juego es la secuela de Adventure Island y el segundo juego de la serie ", "https://i.pinimg.com/736x/67/85/dc/6785dca338fad2427ff0f9211fc8d1bb.jpg ", 1989, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Battle City ", "Battle City es un videojuego de tanques producido y publicado por Namco como una adaptación del clásico arcade Tank Battalion.", "https://ae01.alicdn.com/kf/H8fba00f075ca4841ac03450990597a3au/Battle-City-cartucho-para-consola-port-til-de-16-bits-Cartucho-para-guardar-videojuegos-gratis.jpg_q50.jpg", 1988, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("RoboCop ", "Robocop es un juego híbrido, que presenta elementos de los títulos beat 'em up y run and gun. ", "https://i.ebayimg.com/images/g/vwAAAOSwZjJU3gEW/s-l300.jpg ", 1979, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Out Run ", "Out Run es un videojuego de carreras creado en 1986 ", "https://www.dhresource.com/0x0/f2/albu/g5/M01/29/E7/rBVaJFknpaCAJPSTAAI-xjyinuc355.jpg ", 1986, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Alex Kidd in Miracle World ", "En él, el jugador controla a Alex Kidd y tiene que superar 17 fases, salvando obstáculos y enemigos al tiempo que recolecta objetos, con el fin de liberar el planeta Aries de las manos del gobernante tirano Janken el grande. ", "https://as01.epimg.net/meristation/imagenes/2020/06/13/game_cover/566565891592038979.jpg ", 1976, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Asteroids ", "Asteroids es un popular videojuego arcade basado en vectores lanzado en 1979 por Atari. El objetivo del juego es disparar y destruir asteroides evitando chocar contra los fragmentos de estos ", "https://i.ebayimg.com/thumbs/images/g/SOUAAOSwqo1gEbRD/s-l300.jpg ", 1989, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Door Door ", "Door Door es un juego de video puzzle-plataforma diseñado por Koichi Nakamura y publicado por Enix ", "https://oldgameshelf.com/roms/nes/door-door/images/nes_door_door_2.jpg ", 1978, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Plotting ", "Plotting es un videojuego de rompecabezas de emparejar fichas ", "https://www.soloretro.com/images/cabecera/1511514856.jpg ", 1998, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Elevator Action ", "El jugador asume el papel de un espía que se infiltra en edificios con ascensores. Éste debe recoger documentos secretos en las diferentes habitaciones del edificio y atravesar los diferentes pisos del edificio aprovechando el sistema de elevadores del edificio, tanto ascensores como escaleras mecánicas, y que serán más complejos a medida que avancemos en el juego. ", "https://i.ebayimg.com/images/g/VVIAAOSwEphewtgi/s-l300.jpg ", 1972, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Pooyan ", "El jugador toma el papel de una cerdita equipada con un arco y una flecha, la cual debe proteger a sus hijos de los hambrientos lobos que se desplazan desde o hacia un barranco. La cerda está suspendida en un elevador. Este se puede mover verticalmente hacia arriba y abajo, y debe ser usado para dispararle a los globos que utilizan los lobos para movilizarse, y así hacer que den de cabeza contra el suelo. Cada vez que el jugador no le de a uno de los lobos, en niveles impares, éste subirá por una escalera para tratar de morder a la cerdita. Ella debe destruir a todos los lobos antes de que toquen el suelo ", "https://i.etsystatic.com/17153966/r/il/094df1/1617913844/il_570xN.1617913844_st9v.jpg ", 1981, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Seicross ", "Durante el juego de Seicross, el jugador viaja en un vehículo parecido a una motocicleta que se desliza, chocando con otros ciclistas, recolectando módulos de energía y recolectando personas azules que están varadas. Una segunda área elimina a los jinetes y agrega terreno accidentado, mientras que la etapa final presenta una batalla con uno o más Tanques de dinosaurios, que lanzan sus cabezas cuando son destruidos. ", "https://i.ebayimg.com/thumbs/images/g/GBQAAOSw-wJfaROb/s-l300.jpg ", 1982, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Track & Field ", "Track & Field, conocido en Japón como Hyper Olympic, es un videojuego deportivo desarrollado por Konami en 1983 y que marcó el inicio de la saga Track and Field. Las pruebas deportivas de este juego están basadas en competiciones presentes en el atletismo ", "https://cloud10.todocoleccion.online/videojuegos-consola-msx/tc/2019/10/26/17/181131441.jpg ", 1983, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Bump 'n' Jump ", "Traducción del inglés-Bump 'n' Jump es un juego de combate de vehículos con vista aérea creado por Data East y lanzado originalmente en Japón como Burnin Rubber ", "https://i.ebayimg.com/thumbs/images/g/2C0AAOSwxYBfKKUy/sl300.jpghttps://i.ebayimg.com/thumbs/images/g/2C0AAOSwxYBfKKUy/s-l300.jpg", 1984, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Warp & Warp ", "El jugador debe tomar el control de un "Monster Fighter", que debe disparar a los extraterrestres que se sacan la lengua llamados Berobero (una palabra onomatopéyica japonesa para lamer) en el Mundo espacial sin dejar que lo toquen. Si mata a tres Berobero del mismo color seguidos, aparecerá un misterioso alienígena que puede ser asesinado por puntos extra. ", "https://cl.buscafs.com/www.levelup.com/public/uploads/images/51232_256x305.jpg ", 1985, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Dig Dug II ", "Dig Dug II se desarrolla en un conjunto de islas que son vistas desde una perspectiva aérea o top-down.1 El objetivo del videojuego es derrotar a todos los enemigos de la isla para avanzar al siguiente nivel.2 Hay dos tipos de enemigos; los Pookas (monstruos rojos redondos con gafas) que merodean por la isla y los Fygars (los dragones), que pueden exhalar fuego horizontalmente.2 El jugador comienza con tres vidas, y perderá una si es tocado por algún enemigo.3 ", "https://stopxwhispering.files.wordpress.com/2013/05/dig-dug-ii_.jpeg?w=800 ", 1986, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Exerion ", "El juego utiliza un fondo de desplazamiento pseudo-3D, lo que da una sensación de profundidad, y la nave del jugador tiene una sensación de inercia mientras se controla con el joystick. ", "https://http2.mlstatic.com/D_NQ_NP_627100-MLA42727529837_072020-O.jpg ", 1987, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Pac-Land ", "Pac-Land es un videojuego de plataformas originalmente lanzado para arcade por Namco y Bally Midway en 1984. Es el primer juego arcade de Namco en utilizar el sistema arcade Namco Pac-Land y el primero de plataformas de Pac-Man, apartándose del estilo laberíntico de sus juegos anteriores. ", "https://i0.wp.com/www.hugozapata.com.ar/wp-content/uploads/2020/03/pacland.jpg?fit=680%2C381 ", 1988, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Gyrodine ", "El jugador controla a un helicóptero que posee misiles y una ametralladora como armas. El objetivo es volar y mantenerse a salvo de todos los enemigos que intentan destruir el helicóptero. El juego, como muchos juegos antiguos, es infinito. No hay fases, ni enemigos finales. Se puede jugar hasta que se pierden todas las vidas. Durante la partida, es posible encontrar objetos que dan puntos extra. ", "https://thumbs4.ebaystatic.com/d/l225/m/mltxOqIzN22enkTv-k5Qv_g.jpg ", 1989, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Sky Destroyer ", "En Sky Destroyer el jugador controla un avión monoplano japonés de la Segunda Guerra Mundial de color verde, surcando el cielo acabando con enemigos y esquivando sus ataques que provienen de cielo, mar y tierra tanto de aeroplanos, Barcos, Submarinos, Acorazados y el jefe de final de fase. El monoplano tendrá que usar todo su arsenal que incluye cañones y torpedos. ", "https://http2.mlstatic.com/D_NQ_NP_767655-MLA30694706445_052019-O.jpg ", 1990, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Binary Land ", "En la versión Famicom del juego, los jugadores deben unir a dos pingüinos , Gurin (macho) y Malon (hembra), que están enamorados.  La versión MSX presenta a un niño y una niña humanos; El juego sigue siendo idéntico a la versión de Famicom. Los jugadores controlan a Malon y Gurin simultáneamente, con un temporizador que aumenta la dificultad. Estos pingüinos se mueven en imágenes especulares entre sí.", "https://www.picclickimg.com/d/l400/pict/133125195334_/Binary-Land-Nintendo-Famicom-Nes-8Bit-Giapponese.jpg ", 1991, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Formation Z ", "es un videojuego de matamarcianos inicialmente fue lanzado para los arcades en septiembre de 1984 por Jaleco. El Arcade lanzado fue distribuido por Williams y se lo conoce como Aeroboto fuera de Japón. ", "https://www.retroplace.com/pics/nes/packshots/1322--formation-z.png ", 1992, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Bomb Jack ", "Bomb Jack es un videojuego de plataformas creado por la empresa Tehkan y publicado en 1984 que tiene como objetivo lograr coger todas las bombas de la pantalla sin ser eliminado por algún enemigo. ", "https://commondatastorage.googleapis.com/images.pricecharting.com/AMIfv96bWBF-JSEPAQNoB6nJjBgxE-5_q510621Rnzw5k9r3R3ehPQR3H0uDv6BH1lpQFtqML7Plpe7ivKZ7VExnHjS4G3wg0e80uztwJht__UQn89FMWm740YE2MVspKI8T22W2XypvaA4Y313Szh4ulrYKdHAw/240.jpg", 1992, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Spelunker ", "La cueva en Spelunker está dividido en seis niveles. Aunque los niveles conectan a la perfección entre sí, formando un gran mapa, el juego indica claramente un cambio de nivel en ciertos puntos, mostrando el nombre del siguiente nivel y da al jugador un bono, que consiste en una vida extra y una cantidad variable de puntos. Además, dependiendo de la memoria, el siguiente nivel o dos se han cargado desde el disco en ese momento. ", "https://http2.mlstatic.com/D_NQ_NP_787221-MLM20736547666_052016-W.jpg", 1994, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Mega Man 3 ", "Mega Man 3 es un juego para el NES de Nintendo, creado en 1990 por la compañía Capcom, como secuela de Mega Man 2. ", "https://http2.mlstatic.com/D_NQ_NP_857662-MLM31994359333_082019-W.jpg ", 1980, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Mach Rider ", "Mach Rider es un videojuego de carreras futuristas creado por Nintendo. ", "https://i.ebayimg.com/thumbs/images/g/g1sAAOSw-gJfxpFm/s-l300.jpg ", 1981, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Star Luster ", "Star Luster es un juego de simulación de combate espacial de 1985 desarrollado y publicado por Namco para Family Computer en Japón.", "https://http2.mlstatic.com/D_NQ_NP_690490-MLM41631154503_052020-O.jpg ", 1982, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Devil World ", "Devil World es un videojuego de laberintos desarrollado y publicado por Nintendo para la Nintendo Entertainment System.", "https://i.ebayimg.com/images/g/IIwAAOSwVJJfxC~N/s-l300.jpg ", 1983, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Lode Runner ", "El jugador controla un personaje que tiene que recoger todo el oro de un nivel mientras evita a los guardias que tratan de atraparlo. Tras recoger todo el oro, debe moverse hasta la parte superior de la pantalla para llegar al siguiente nivel. Hay 150 niveles en el juego que progresivamente van desafiando las habilidades del jugador, como la resolución de problemas o los tiempos de reacción. ", "https://www.retroplace.com/pics/c64/packshots/169486--lode-runner.png ", 1984, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Road Fighter ", "Road Fighter es un videojuego de carreras y la primera entrega de la serie del mismo nombre producido por Konami y lanzado en los arcades en 1984. Fue el primer juego de carreras desarrollado por esta compañía. El objetivo es alcanzar la meta sin chocar los coches que aparecen ni quedarse sin gasolina. ", "https://i.ebayimg.com/images/g/2kkAAOSwax5Yo-gf/s-l300.jpg ", 1975, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("TwinBee ", "TwinBee es un matamarcianos de scroll vertical con estética cartoon que fue publicado originalmente en Japón como arcade por Konami en 1985, siendo el primer videojuego de la serie homónima. Fue el primer juego de Konami en funcionar sobre la placa Bubble System de Konami. ", "https://i.ebayimg.com/images/g/yBYAAOSwk5Fd-rM6/s-l300.jpg ", 1989, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Lunar Pool ","Lunar Pool, conocido como Lunar Ball en Japón, es un videojuego de simulación de pool combinado con aspectos de la minigolf ","https://i.ebayimg.com/images/g/6SoAAOSwdtxfzqbQ/s-l400.jpg ", 1989, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Urban Champion ","Urban Champion es un juego de lucha de dos jugadores distribuido por Nintendo en 1984. Este se inspiró en el título de Game & Watch de 1984, Boxing, el cual fue el primer juego de peleas de Nintendo","https://i.ebayimg.com/thumbs/images/g/tR4AAOSwmZBgIsBh/s-l300.jpg ", 1980, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Mappy ","El jugador guía a Mappy, el ratón policía, a través de la mansión de los gatos llamados los Mewkies (Meowky en la versión de EE.UU.) para recuperar los bienes robados. El jugador utiliza una palanca de mando de izquierda-derecha para mover Mappy y un único botón para hacer funcionar puertas. La mansión cuenta con seis plantas, cuatro o cinco en algunas otras versiones, de pasillos en los que están escondidos los objetos robados.","https://cloud10.todocoleccion.online/videojuegos-consola-gamegear/tc/2018/07/02/09/126837146.jpg ", 1981, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Bubble Bobble ","Uno o dos jugadores encarnan los personajes de Bub y Bob, dos pequeños dragoncitos que deben luchar a través de 100 niveles contra sus enemigos para rescatar a sus amadas novias secuestradas por el temible villano Super Drunk (con quien se debe luchar en el nivel 100). ","https://images-na.ssl-images-amazon.com/images/I/61itZBOu6gL._SX342_.jpg ", 1982, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Paperboy ","El protagonista de Paperboy es un joven repartidor de periódicos, que deberá entregar la prensa a los suscriptores del barrio montado en su bicicleta. En la máquina recreativa original, el controlador del personaje era un manillar de bicicleta y los escenarios están dispuestos en perspectiva oblicua. La franquicia ha contado con dos secuelas: Paperboy 2 (1992) y Paperboy 64 (1999). ","https://cloud10.todocoleccion.online/videojuegos-consola-nes/tc/2011/09/13/28490696.jpg ", 1983, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Snow Bros ","Es un juego de plataformas en el que debes eliminar a todos los enemigos de cada nivel. Esto se consigue lanzándoles nieve que es la capacidad especial de los personajes convirtiéndoles así en bolas de nieve y luego lanzándolas a rodar. ","https://ae01.alicdn.com/kf/H20569347eb324ae7a8aeb46d20ad0b5fK/Snow-Bros-cartucho-de-juego-de-16-bits-tarjeta-de-juego-MD-con-caja-de-venta.jpg_Q90.jpg_.webp ", 1984, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Double Dragon ","Double Dragon es un videojuego lanzado para máquinas recreativas en 1987, desarrollado por Technos Japan, que pertenece al género Beat'em up. ","https://ae01.alicdn.com/kf/HTB1zkd3KVXXXXc9XFXXq6xXFXXXS/Battletoads-y-doble-Drag-n-Cartucho-de-juego-del-equipo-definitivo-tarjeta-de-juego-de-16.jpg_q50.jpg", 1985, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Xevious ","videojuego de arcade del género shoot 'em up de desplazamiento vertical de 1983 desarrollado y publicado por Namco. ","https://http2.mlstatic.com/D_NQ_NP_795743-MLA26476532967_122017-O.jpg ", 1983, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Donkey Kong Country ","Donkey Kong Country es un videojuego desarrollado por la compañía Rareware y Nintendo, que incluye la familia del popular personaje de videojuegos ","https://ae01.alicdn.com/kf/HTB1d0cZXcrrK1RjSspaq6AREXXam/Cartucho-de-juego-Donkey-Kong-Country-1-2-3-ARPG-bater-a-Ahorre-la-versi-n.jpg", 1987, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Dr. Mario ","Un grupo de virus se ha escapado y anda suelto por el hospital del Reino Champiñón. ¡Ha llegado la hora de que Mario les dé una buena dosis de su propia medicina! En este clásico juego de puzles, deberás girar y alinear las cápsulas de vitaminas de colores para acabar con los virus. ","https://static.wikia.nocookie.net/videojuego/images/d/d8/Dr._Mario_-_Portada.jpg/revision/latest?cb=20110927122445", 1988, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Balloon Fight ","Balloon Fight es un videojuego de acción/arcade desarrollado por Nintendo. La versión original de máquinas recreativas fue lanzada para la Nintendo VS. ","https://cdn02.nintendo-europe.com/media/images/10_share_images/games_15/nes_5/H2x1_NES_BalloonFight.jpg ", 1989, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Arkanoid ","Rompe todos los ladrillos que puedas en el clásico Arkanoid mientras recopilas todos los power ups que puedas sin perder la bola de vista ni un solo momento. ¡Consigue obtener la máxima puntuación! ","https://i.ebayimg.com/images/g/NSEAAOSwxVFfxUb~/s-l300.jpg ", 2000, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Excitebike ","Excitebike es un videojuego de carreras de motocross creado por Nintendo. ","https://images.crazygames.com/excitebikeb.png?auto=format,compress&q=75&cs=strip&ch=DPR&w=1200&h=630&fit=crop", 2004, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Ice Climber ","Ayuda a este esquimal usando su martillo para quebrar el hielo y subir por los niveles marcados en cada piso. Elimina a los enemigos de las tierras heladas con tu martillo antes que te impidan avanzar hacia las alturas. Disfruta de este clásico juego 8 bits y la magia de la nostalgia. ","https://i.ebayimg.com/images/g/LQsAAOSwAS1emc3y/s-l400.jpg ", 1979, 1);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Super Mario Bros. 3 ","Super Mario Bros. 3 es el último videojuego de plataformas de la franquicia Mario para la consola Nintendo Entertainment System. Salió a la venta el 23 de octubre de 1988 en Japón y el 12 de febrero de 1990 en Estados Unidos ","https://i.ebayimg.com/images/g/IoMAAOSwM-ZcudyM/s-l300.jpg ", 1980, 2);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Pong ","Pong fue un videojuego de la primera generación de videoconsolas publicado por Atari, creado por Nolan Bushnell y lanzado el 29 de noviembre de 1972. Pong está basado en el deporte de tenis de mesa. ","https://www.tierragamer.com/wp-content/uploads/2017/12/Pong.jpg ", 1978, 3);

INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)
VALUES ("Tetris ","Tetris es un videojuego de lógica originalmente diseñado y programado por Alekséi Pázhitnov en la Unión Soviética. Fue lanzado el 6 de junio de 1984","https://cdn.wallapop.com/images/10420/8i/th/__/c10420p515338087/i1483748066.jpg?pictureSize=W640 ", 1974, 1);

