DROP DATABASE IF EXISTS mujerfintech;

CREATE DATABASE mujerfintech DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

USE mujerfintech;

-- Estructura
CREATE TABLE noticia (
    `id` bigint unsigned NOT NULL AUTO_INCREMENT,
    autor varchar(255) DEFAULT NULL,
    fecha_publicacion date DEFAULT NULL,
    imagen_url varchar(255) DEFAULT NULL,
    titulo varchar(255) DEFAULT NULL,
    url_noticia varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB;

-- Datos para la tabla noticia
INSERT INTO
    noticia (
        autor,
        fecha_publicacion,
        imagen_url,
        titulo,
        url_noticia
    )
VALUES (
        'Redacción EC',
        '2024-10-31',
        'https://elcomercio.pe/resizer/v2/ZXM2B6YAXRF3DBKB4YCCOOJ4RI.jpg?auth=f562f0be4b61d7ac0c5861655684b005061ac7f3c340161fe5fd3d08730a9b27&width=320&height=180&quality=75&smart=true',
        '¿De qué se arrepienten más las mujeres al final de sus vidas? Esto reveló un estudio de Harvard',
        'https://elcomercio.pe/respuestas/que/de-que-se-arrepienten-mas-las-mujeres-al-final-de-sus-vidas-esto-revelo-un-estudio-de-harvard-tdpe-noticia/'
    ),
    (
        'Redacción EC',
        '2024-10-19',
        'https://elcomercio.pe/resizer/v2/6NA2AQWHTBEMNHTHWTNBAANOFQ.jpg?auth=0cc2195293d84ba591e039525b12545a6cec25685351f55dbff616a4d9759b8b&width=320&height=180&quality=75&smart=true',
        'Esta es la razón por la que una mujer tiene mayores posibilidades de padecer Alzheimer tras la menopausia',
        'https://elcomercio.pe/respuestas/cual/cual-es-la-razon-por-la-que-una-mujer-tiene-mayores-posibilidades-de-padecer-alzheimer-tras-la-menopausia-tdpe-noticia/'
    ),
    (
        'Redacción EC',
        '2024-09-13',
        'https://elcomercio.pe/resizer/v2/Y3ALS2G6H5GBZPFHB4R4DIAY6I.jpg?auth=923d56f45c0a829a8ed452e98fb3890d28fe9f8d589b45d1caaf51c0fa92fde2&width=320&height=180&quality=75&smart=true',
        '¿Las mujeres inventaron la cerveza? Esto revela un sorprendente estudio',
        'https://elcomercio.pe/respuestas/que/las-mujeres-inventaron-la-cerveza-esto-revela-un-sorprendente-estudio-tdpe-noticia/'
    ),
    (
        'Mongabay Latam',
        '2024-09-05',
        'https://elcomercio.pe/resizer/v2/PB4NAYEV5BDW3CQZHY3TAWE2RE.jpg?auth=5d8d2fdbe2d50f28cd86f3b7326f57b5ce04dfc8b94d1705dec11e4b3be7ac85&width=320&height=180&quality=75&smart=true',
        '“Las mujeres indígenas en la Amazonía deben fortalecerse, deben tomar las decisiones y no quedarse calladas” | ENTREVISTA',
        'https://elcomercio.pe/tecnologia/ecologia/las-mujeres-indigenas-en-la-amazonia-deben-fortalecerse-deben-tomar-las-decisiones-y-no-quedarse-calladas-entrevista-noticia/'
    ),
    (
        'Francisco Sanz Gutiérrez',
        '2024-08-30',
        'https://elcomercio.pe/resizer/v2/GUSAK4YUHBG35PINC5RCKI4PWA.png?auth=ebd1bdf3bacdc7fff27926c88f09459ceba799f9244b15c04c69c0813ae85bc8&width=320&height=180&quality=75&smart=true',
        'El régimen talibán pisotea aún más los derechos de las mujeres en Afganistán',
        'https://elcomercio.pe/mundo/actualidad/el-regimen-taliban-pisotea-aun-mas-los-derechos-de-las-mujeres-en-afganistan-noticia/'
    ),
    (
        'Redacción EC',
        '2024-08-29',
        'https://elcomercio.pe/resizer/v2/6VJ7G3C33JHYPCZI2PXIU6UYEM.jpeg?auth=cf401e4ba41535b63981debc6a1d75a23eca7998f22a69073efb346a84704d86&width=320&height=180&quality=75&smart=true',
        'Desafiando estereotipos: mujeres aportan nuevas perspectivas a la industria de videojuegos en Perú',
        'https://elcomercio.pe/tecnologia/actualidad/desafiando-estereotipos-mujeres-aportan-nuevas-perspectivas-a-la-industria-de-videojuegos-en-peru-noticia/'
    ),
    (
        'Redacción EC',
        '2024-08-26',
        'https://elcomercio.pe/resizer/v2/457VQ5XYT5FDJCP7V6WD2CZZOQ.jpg?auth=ef08f5b0a697dacd41945b4cbb7db68666b3c326bd3b1d02b31cbefb5e406dd2&width=320&height=180&quality=75&smart=true',
        'Daniela Darcourt y las 50 peruanas más PODEROSAS en el 2024, según Forbes: revisa el listado completo',
        'https://elcomercio.pe/respuestas/farandula/daniela-darcourt-y-las-50-peruanas-mas-poderosas-en-el-2024-segun-forbes-revisa-el-listado-completo-tdpe-noticia/'
    ),
    (
        'BBC News Mundo',
        '2024-08-14',
        'https://elcomercio.pe/resizer/v2/LMONNQ72GJDLHFBWJVWEO43S6M.jpg?auth=044b88508a134edd8d985590ab9e5cbac54498a040066156bfd6080e1773e56c&width=320&height=180&quality=75&smart=true',
        'Por qué el Talibán está obligando a algunas mujeres afganas a casarse con los maridos de los que habían logrado divorciarse',
        'https://elcomercio.pe/mundo/asia/afganistan-por-que-el-taliban-esta-obligando-a-algunas-mujeres-afganas-a-casarse-con-los-maridos-de-los-que-habian-logrado-divorciarse-noticia/'
    ),
    (
        'Redacción EC',
        '2024-07-26',
        'https://elcomercio.pe/resizer/v2/WRMCX3U7RRCHTKAQ6VEMLPPIBY.jpg?auth=d1fbe7ffa6e3075f29934da73bf1d9e837d3cb4e7eeed152bd1ea25847359964&width=320&height=180&quality=75&smart=true',
        '¿Qué significa el logo de los Juegos Olímpicos de París 2024 y por qué lo vinculan con las mujeres?',
        'https://elcomercio.pe/respuestas/que/que-significa-el-logo-de-los-juegos-olimpicos-de-paris-2024-y-por-que-lo-vinculan-con-las-mujeres-tdpe-noticia/'
    ),
    (
        'Redacción EC',
        '2024-07-21',
        'https://elcomercio.pe/resizer/v2/W327X5F7MVHGDBA6PTIP42I6II.jpg?auth=1b0323985b395d9b81cee548ed10c81bbaeda988d0086db5abeb419cedea982f&width=320&height=180&quality=75&smart=true',
        'Entérate sobre los 3 beneficios que tienen la mujeres que consumen la vitamina B12',
        'https://elcomercio.pe/respuestas/que/3-beneficios-que-tiene-la-vitamina-b12-en-las-mujeres-tdpe-noticia/'
    ),
    (
        'BBC News Mundo',
        '2024-07-21',
        'https://elcomercio.pe/resizer/v2/VRFPZYKS2RE4LJDKJGFIBAXNHY.jpg?auth=b6efc5f931684bde5eacf215ecdbe11d369c6551ed3fb93a0574d17042ccde48&width=320&height=180&quality=75&smart=true',
        '¿Qué pasó con las mujeres que se enfrentaron al Talibán en Afganistán?',
        'https://elcomercio.pe/mundo/asia/que-paso-con-las-mujeres-que-se-enfrentaron-al-taliban-en-afganistan-noticia/'
    ),
    (
        'Sebastián Ramírez Mendoza',
        '2024-07-18',
        'https://elcomercio.pe/resizer/v2/DOQE2FOWAFC5HJ4IZKQWYVJPUM.jpg?auth=09f7f2210f987917a9e37ab647f004a9435e33856e9b020e0362703348937c64&width=320&height=180&quality=75&smart=true',
        '“No es fácil ser investigadora, mucho menos siendo mujer”: Stella Maris Chenet y otras 11 mujeres con inspiradoras historias de superación',
        'https://elcomercio.pe/lima/no-es-facil-ser-investigadora-mucho-menos-siendo-mujer-stella-maris-chenet-y-otras-11-mujeres-con-inspiradoras-historias-de-superacion-orden-al-merito-de-la-mujer-2024-ministra-de-la-mujer-noticia/'
    ),
    (
        'Redacción EC',
        '2024-07-04',
        'https://elcomercio.pe/resizer/v2/S7BQZADDSBASNPNAB7XA7X6PQQ.jpg?auth=c5e339fe6d7117cbad9592b667ca47f8fb4230e7ac093b838cc668ae168a723a&width=320&height=180&quality=75&smart=true',
        'El desafío de la equidad de género',
        'https://elcomercio.pe/opinion/columnistas/brecha-mujeres-peru-el-desafio-de-la-equidad-de-genero-por-urpi-torrado-noticia/'
    ),
    (
        'Redacción EC',
        '2024-06-28',
        'https://elcomercio.pe/resizer/v2/2Q3JA4KPXRGGJK7YJVYHRLVFYQ.jpg?auth=67a94ee0cc95728d2e0b3faaf98ff5137f28236984ebfa30f34bdddb5983d164&width=320&height=180&quality=75&smart=true',
        'Laboratoria y Salesforce se unen para impulsar la empleabilidad de mujeres en la industria tecnológica',
        'https://elcomercio.pe/economia/laboratoria-y-salesforce-se-unen-para-impulsar-la-empleabilidad-de-mujeres-en-la-industria-tecnologica-noticia/'
    ),
    (
        'BBC News Mundo',
        '2024-06-21',
        'https://elcomercio.pe/resizer/v2/KLXRUT6AUBCILFNJQ27VSIJJVA.jpeg?auth=80a09ebe89c1cbab6683bd6a1ceec45ea9acd7f490d21de9ac5c9c92594d27f3&width=320&height=180&quality=75&smart=true',
        'Romper barreras en la ingeniería: el liderazgo femenino y su impacto en la construcción civil',
        'https://elcomercio.pe/peru/romper-barreras-en-la-ingenieria-el-liderazgo-femenino-y-su-impacto-en-la-construccion-civil-noticia/'
    ),
    (
        'BBC News Mundo',
        '2024-06-16',
        'https://elcomercio.pe/resizer/v2/MUPG2W7UNVBSHIOMUVVXFLR4TY.jpg?auth=3fe46e772494584c076f343ac0401e372a6e4f8eba770de38238a505a86fc1ae&width=320&height=180&quality=75&smart=true',
        'Erin Pizzey, la mujer que empezó siendo una heroína del feminismo y ahora lucha por los derechos de los hombres',
        'https://elcomercio.pe/mundo/europa/erin-pizzey-la-mujer-que-empezo-siendo-una-heroina-del-feminismo-y-ahora-lucha-por-los-derechos-de-los-hombres-reino-unido-mujeres-narracion-historias-ec-noticia/'
    ),
    (
        'Junior Miani',
        '2024-06-16',
        'https://elcomercio.pe/resizer/v2/E2HH4UGJ55CJ3BTXXDFTZB65AU.jpg?auth=4e82f32d230e1c5efe38fbcbea2c436c8589be26dd2f0b5bf28f52c67ff6fd46&width=320&height=180&quality=75&smart=true',
        '“Mi padre nunca supo el nombre completo de mi madre”: los hijos no deseados de la guerra de Vietnam',
        'https://elcomercio.pe/mundo/asia/vietnam-mi-padre-nunca-supo-el-nombre-completo-de-mi-madre-los-hijos-no-deseados-de-la-guerra-tailandia-estados-unidos-noticia/'
    ),
    (
        'Ana Bazo Reisman',
        '2024-06-13',
        'https://elcomercio.pe/resizer/v2/SIO46SES3BG5RNNKRRGWMS5W4A.jpeg?auth=5ea462b59f2e4005c06dfb460d4c4fb5c406f7334c993e3abe3f08279b11a4e7&width=320&height=180&quality=75&smart=true',
        'Mujeres en los directorios de las empresas: ¿Cómo se encuentra el Perú en comparación al resto de Latinoamérca?',
        'https://elcomercio.pe/economia/dia-1/mujeres-en-los-directorios-de-las-empresas-como-se-encuentra-el-peru-en-comparacion-al-resto-de-latinoamerca-noticia/'
    ),
    (
        'Rolando Arellano C.',
        '2024-05-29',
        'https://elcomercio.pe/resizer/v2/5BOUD35YLZCETJOUKYXWF4SQZM.jpg?auth=68895b5d5497f19ba5d305b00e1a5a952a5ceeaa1a7568c7b5836448ee1feed4&width=320&height=180&quality=75&smart=true',
        'Una anomalía peruana',
        'https://elcomercio.pe/opinion/colaboradores/mujeres-politica-el-comportamiento-politico-del-sector-femenino-de-la-poblacion-por-raul-asensio-noticia/'
    ),
    (
        'BBC News Mundo',
        '2024-05-16',
        'https://elcomercio.pe/resizer/v2/DZWCGB7TURH5ZK233EPFINXROQ.jpg?auth=2809f8e845ea1a84bc9f9aa2710125e10d46a2fe4eb09c531e5846abe5d4b78b&width=320&height=180&quality=75&smart=true',
        'Mujeres en el Estado y la política: Menos del 30% accede a puestos directivos y ni el 10% a liderazgos locales',
        'https://elcomercio.pe/ecdata/mujeres-en-el-estado-y-la-politica-menos-del-30-accede-a-puestos-directivos-y-ni-el-10-a-liderazgos-locales-ecdata-dia-internacional-de-la-mujer-noticia/'
    ),
    (
        'Redacción EC',
        '2024-05-12',
        'https://elcomercio.pe/resizer/v2/XGVALEB3YZFSVIQ2UONTQZ4O5Q.jpg?auth=9185745a4251eebc119c83c96530977f97df7c93cc6743490ffb44e59ff7cdf8&width=320&height=180&quality=75&smart=true',
        'El papel transformador de la mujer en el tejido empresarial del Perú',
        'https://elcomercio.pe/economia/opinion/el-papel-transformador-de-la-mujer-en-el-tejido-empresarial-del-peru-por-veronica-valdez-opinion-economia-mujeres-equidad-de-genero-igualdad-de-genero-hombres-noticia/'
    ),
    (
        'Redacción EC',
        '2024-05-11',
        'https://elcomercio.pe/resizer/v2/UKTXK6W6URAE3D26GCX2TQEZBM.jpg?auth=eb055e5f8c0cce9d152ff58696e9a07bb63b1272fcb2c4c64731e51d4391677c&width=320&height=180&quality=75&smart=true',
        'Mi esposo lava y cocina',
        'https://elcomercio.pe/opinion/columnistas/madres-mujeres-mi-esposo-lava-y-cocina-por-rolando-arellano-noticia/'
    ),
    (
        'Caroline Gibu',
        '2024-05-10',
        'https://elcomercio.pe/resizer/v2/CHXRSH57EVHV7HLNEWYWVOK4H4.png?auth=f70b51d69a48b572d36088f1b6de7068d2ad36aa0ee896a1508bd0f6801ebc44&width=320&height=180&quality=75&smart=true',
        '“El caso Asunta”: la niña china asesinada por sus padres adoptivos que estremeció a España',
        'https://elcomercio.pe/mundo/espana/el-caso-asunta-la-nina-china-asesinada-por-sus-padres-adoptivos-que-estremecio-a-espana-asunta-basterra-narracion-historias-ec-noticia/'
    ),
    (
        'Mongabay Latam',
        '2024-04-22',
        'https://elcomercio.pe/resizer/v2/GV5NZAL5WBGQ7FZEBHNJT7JWMY.png?auth=161b43ba7ba6fc898b6ba7d7c045c142738fac1101b4155d521bc9a70f1f83e3&width=320&height=180&quality=75&smart=true',
        '¿De qué se arrepienten las mujeres en sus últimos años de vida, según Harvard?',
        'https://elcomercio.pe/respuestas/trends/de-que-se-arrepienten-las-mujeres-en-sus-ultimos-anos-de-vida-segun-harvard-tdpe-noticia/'
    ),
    (
        'Milenka Duarte',
        '2024-04-16',
        'https://elcomercio.pe/resizer/v2/PPGU3W3G25B65JORQRFOIKEFB4.jpg?auth=700dd3eb3c683c3d5a960f61e3f11733e4f9d1b17cfcbdba86b8f047f16ccfa2&width=320&height=180&quality=75&smart=true',
        'Estos son los lugares más atractivos para mujeres que viajan solas',
        'https://elcomercio.pe/respuestas/trends/estos-son-los-lugares-mas-atractivos-para-mujeres-que-viajan-solas-tdpe-noticia/'
    ),
    (
        'Milenka Duarte',
        '2024-04-07',
        'https://elcomercio.pe/resizer/v2/WRN3Z6F5KRENBENWM7Z4SJI3TY.jpg?auth=dff5dc7b54c47998b6e7f069c21941577e897ae21432243a9e96e7ccc9d0c4e3&width=320&height=180&quality=75&smart=true',
        'Mujeres sin reloj',
        'https://elcomercio.pe/economia/opinion/opinion-mujeres-sin-reloj-caroline-gibu-mujeres-cargos-directivos-gestion-publica-noticia/'
    ),
    (
        'Claudia Inga Martínez',
        '2024-04-03',
        'https://elcomercio.pe/resizer/v2/Z2YYB67YRVGQHKFF5PI2RSMASI.jpeg?auth=f09ce629275873e522539354a92d4cd878236576f5137b446ba34372244f7285&width=320&height=180&quality=75&smart=true',
        'Guardianas del Marañón: la lucha de las mujeres kukama para que se reconozcan los derechos de un río peruano',
        'https://elcomercio.pe/tecnologia/ecologia/guardianas-del-maranon-la-lucha-de-las-mujeres-kukama-para-que-se-reconozcan-los-derechos-de-un-rio-peruano-noticia/'
    ),
    (
        'Redacción EC',
        '2024-03-21',
        'https://elcomercio.pe/resizer/v2/CMHMWI3KRVBETO6U4JTD6XT23Q.jpg?auth=70a8e0575ce6f5a9df3e6fd39303faaa2c057ec945dfb529a51029e2d65c773c&width=320&height=180&quality=75&smart=true',
        'Descubre tu bienestar: la guía integral de autocuidado para mujeres',
        'https://elcomercio.pe/bienestar/crecimiento-personal/descubre-tu-bienestar-la-guia-integral-de-autocuidado-para-mujeres-habitos-saludables-autoestima-amor-propio-salud-mental-cuidado-personal-noticia/'
    ),
    (
        'Redacción EC',
        '2024-03-20',
        'https://elcomercio.pe/resizer/v2/QT5GY2MFNVCWFPIHLUKPQNXNUA.jpg?auth=70be843228b6406f6531ae0636348a5d2dbcee1348658a8871c4c2e2215c70d3&width=320&height=180&quality=75&smart=true',
        '2 de cada 3 mujeres reciben comentarios no solicitados sobre su cuerpo: ¿cómo impacta en su autoestima y salud mental?',
        'https://elcomercio.pe/bienestar/mente-sana/autoestima-como-impacta-en-las-mujeres-los-comentarios-sobre-su-fisico-salud-mental-trastornos-alimenticios-autovaloracion-noticia/'
    ),
    (
        'Redacción EC',
        '2024-03-12',
        'https://elcomercio.pe/resizer/v2/7PLI4NNOUFDCBGNCB72NWVXNDQ.jpg?auth=bd597df6119afccbeb01a978055c3857f038f41bdabc70e926477f6d431a245a&width=320&height=180&quality=75&smart=true',
        'Mes de la Mujer: ¿cómo avanza el acceso de mujeres a puestos directivos? Especialistas y gerentas nos lo cuentan',
        'https://elcomercio.pe/economia/dia-1/dia-de-la-mujer-como-avanza-el-acceso-de-mujeres-a-puestos-directivos-en-las-empresas-especialistas-y-gerentas-nos-lo-cuentan-8m-ceo-mujeres-hombres-mujeres-ejecutivas-mujeres-lideres-ceo-mujeres-noticia/'
    ),
    (
        'Mariana Costa Checa',
        '2024-03-12',
        'https://elcomercio.pe/resizer/v2/7VCARIM44BGP7C6DHFQIHL7EHQ.jpeg?auth=3f6ad60185bf1d615766c101d3df2c27fd87a25e632f9204f0ee67caf0f133e8&width=320&height=180&quality=75&smart=true',
        '¿Cuáles son los desafíos y recomendaciones de la inclusión financiera femenina?',
        'https://elcomercio.pe/economia/cuales-son-los-desafios-y-recomendaciones-de-la-inclusion-financiera-femenina-noticia/'
    ),
    (
        'Redacción EC',
        '2024-03-11',
        'https://elcomercio.pe/resizer/v2/O2UO45RFHFCHLNVFFCOD2C7YGU.jpg?auth=b5d07f3e18b655c244e50650457b224b3f9b9bce35d94fb4a6687cad42845948&width=320&height=180&quality=75&smart=true',
        '8M: El trabajo por un Perú más equitativo apenas comienza',
        'https://elcomercio.pe/economia/opinion/8m-el-trabajo-por-un-peru-mas-equitativo-apenas-comienza-opinion-dia-de-la-mujer-dia-de-la-mujer-en-peru-equidad-de-genero-mujeres-genero-noticia/'
    ),
    (
        'Redacción EC',
        '2024-03-09',
        'https://elcomercio.pe/resizer/v2/TJOG7KUV5ZD2LKOSWFK3F5PTZQ.jpg?auth=14cc91535f78116ae20f215c7ec9828a30fd6b8dc3c7bf9fd1e10451cdce5b85&width=320&height=180&quality=75&smart=true',
        'Marcha 8M por el Día de la Mujer: así se realizaron las diferentes manifestaciones en el mundo',
        'https://elcomercio.pe/mundo/actualidad/marcha-8m-dia-de-la-mujer-en-vivo-hoy-manifestaciones-y-protestas-en-cdmx-ultima-noticias-en-directo-que-es-ciudades-paises-recorrido-horarios-peru-mexico-colombia-argentina-espana-francia-lbposting-noticia/'
    ),
    (
        'Redacción MAG US',
        '2024-03-08',
        'https://elcomercio.pe/resizer/v2/QSI7JPLTBRHXPJXGNSUM6QE3RU.jpg?auth=da3e8d03302af7fa2cff6a5648d1f3b4e291520fb12a535445273dfb6b321575&width=320&height=180&quality=75&smart=true',
        'Día Internacional de la Mujer EN VIVO hoy: marchas por el 8M en Lima y regiones en todo el Perú',
        'https://elcomercio.pe/peru/dia-internacional-de-la-mujer-en-vivo-hoy-marchas-por-el-8m-en-lima-y-regiones-en-todo-el-peru-en-directo-ciudades-puntos-de-concentracion-horarios-desvios-marcha-8m-8-marzo-ultima-hora-lbposting-noticia/'
    ),
    (
        'Redacción Mag',
        '2024-03-08',
        'https://elcomercio.pe/resizer/v2/QRNYOEPOV5HXDBGBLI72VZXMXU.jpg?auth=5ab8be8863eea547ede61d33d0b157f8f5267d740ed646acffc3a76d054046ea&width=320&height=180&quality=75&smart=true',
        'Día de la Mujer: conoce los inventos tecnológicos creados por mujeres que cambiaron nuestras vidas',
        'https://elcomercio.pe/tecnologia/inventos/dia-de-la-mujer-conoce-los-inventos-tecnologicos-creados-por-mujeres-que-cambiaron-nuestras-vidas-noticia/'
    ),
    (
        'Redacción EC',
        '2024-03-08',
        'https://elcomercio.pe/resizer/v2/ZNF4P56XABGJ5NGNFLHZCUUZ7M.jpeg?auth=5e4f11306f6c49f5bb5d1cb8f1d1083464d8fb206a7c5655e1ff0db49bb0b837&width=320&height=180&quality=75&smart=true',
        'Equidad de género: misión compartida',
        'https://elcomercio.pe/opinion/colaboradores/un-mensaje-para-los-hombres-dia-internacional-de-la-mujer-equidad-de-genero-mision-compartida-noticia/'
    ),
    (
        'Mongabay Latam',
        '2024-03-08',
        'https://elcomercio.pe/resizer/v2/5JYAWL23XVFYXCZXC24T2JRI2M.png?auth=38b7bce4172c8c318c9eed0f9620bb0a6e04142cc2f5770c306f76eb576641f0&width=320&height=180&quality=75&smart=true',
        'Micromachismo en la oficina: ¿Qué es y cómo enfrentarlo?',
        'https://elcomercio.pe/viu/actitud-viu/micromachismo-en-la-oficina-que-es-y-como-enfrentarlo-dia-internacional-de-la-mujer-mujeres-machismo-dia-de-la-mujer-violencia-contra-la-mujer-noticia/'
    ),
    (
        'Véronique Henry',
        '2024-03-08',
        'https://elcomercio.pe/resizer/v2/MKAVAAE5TBDW7A4PWBQHS2Z7XI.png?auth=81e349d1c7d9daff95a62a7da5044331ce21660851c3ed3bb1201277523d580d&width=320&height=180&quality=75&smart=true',
        'Día de la mujer: Interbank contribuye en la construcción de un país más equitativo',
        'https://elcomercio.pe/economia/dia-de-la-mujer-interbank-contribuye-en-la-construccion-de-un-pais-mas-equitativo-8m-mujeres-equidad-igualdad-de-genero-mujeres-en-el-trabajo-inclusion-diversidad-noticia/'
    ),
    (
        'Mongabay Latam',
        '2024-03-08',
        'https://elcomercio.pe/resizer/v2/5VICA67ZRJCX3HW64TILJQBYRM.jpg?auth=f8c236b6e8b240c6917619696aae317c4f8a5556eaca88d19eeba7450ee5795f&width=320&height=180&quality=75&smart=true',
        'Financiera Confianza: Más del 30% de clientes en esta cartera son mujeres',
        'https://elcomercio.pe/economia/financiera-confianza-mas-del-30-de-clientes-en-esta-cartera-son-mujeres-8m-mujeres-dia-de-la-mujer-mujeres-y-la-banca-bbva-bbva-peru-noticia/'
    ),
    (
        'Mongabay Latam',
        '2024-03-08',
        'https://elcomercio.pe/resizer/v2/SKCE6AFBRFCD3LJTJAEAAFNODQ.jpg?auth=fe3e437fe00da0d87d6861f02be2201bb6940278fe85b0f5e95844a5b37943e2&width=320&height=180&quality=75&smart=true',
        'Juntas impulsando a más mujeres',
        'https://elcomercio.pe/opinion/colaboradores/francesca-raffo-paine-retos-y-oportunidades-para-las-mujeres-juntas-impulsando-a-mas-mujeres-noticia/'
    ),
    (
        'Mongabay Latam',
        '2024-03-08',
        'https://elcomercio.pe/resizer/v2/EODEWO7NZ5C6TB3UKZY5BFEWBY.jpg?auth=3e57679f4f8ae8d1afcfd680ad649227248d5d83d7c17ef6d7f2c527e9aeb2ab&width=320&height=180&quality=75&smart=true',
        'Los desafíos de las mujeres migrantes en el Perú',
        'https://elcomercio.pe/opinion/colaboradores/migraciones-mujeres-integracion-economica-educativa-y-social-noticia/'
    ),
    (
        'Autor no disponible',
        '2024-03-07',
        'https://elcomercio.pe/resizer/v2/LJIS2GUYTFFOTK3QABFYZTMLR4.jpg?auth=d119db5e351709f9fda6b7ad423bc8582cce646811d34e3ae4631b5e51e3b5c0&width=320&height=180&quality=75&smart=true',
        'Día Internacional de la mujer: cuáles son los mejores estados para las mujeres en EE. UU.',
        'https://elcomercio.pe/mag/respuestas/us/dia-internacional-de-la-mujer-cuales-son-los-mejores-estados-para-las-mujeres-en-ee-uu-nnda-nnlt-noticia/'
    ),
    (
        'Autor no disponible',
        '2024-03-07',
        'https://elcomercio.pe/resizer/v2/CFZBOFAN5NB23F3TXUMNU5QRBU.jpg?auth=0c884aae59baca7d6a0cc116e97324972d631fe5614e851f586e89f919db77d6&width=320&height=180&quality=75&smart=true',
        'Por qué se conmemora el Día Internacional de la Mujer el 8 de marzo de cada año',
        'https://elcomercio.pe/mag/historias/por-que-se-conmemora-el-dia-internacional-de-la-mujer-cada-8-de-marzo-nnda-nnlt-noticia/'
    ),
    (
        'Autor no disponible',
        '2024-03-07',
        'https://elcomercio.pe/resizer/v2/ZK3LAOAPLVH5NOFYZ5B44J4QRE.jpg?auth=5ee0bf66ae98c054877591f4e01e4a3aea3e791db56fe46635bfd32ae41047fc&width=320&height=180&quality=75&smart=true',
        'Salarios promedio de mujeres en Perú crecieron un 12,7%',
        'https://elcomercio.pe/economia/salarios-promedio-de-mujeres-en-peru-crecieron-un-127-mujeres-dia-de-la-mujer-8m-salarios-empleo-formal-empleo-informal-informalidad-laboral-noticia/'
    ),
    (
        'Autor no disponible',
        '2024-03-06',
        'https://elcomercio.pe/resizer/v2/44HTKWF7SFHY7MBK2GOKGTNXME.jpg?auth=51fffa18243677f5d1d0c7cb762928a9216edf8ff7317e52c9dbd540b6716abd&width=320&height=180&quality=75&smart=true',
        'Etelvina Ramos: de cocalera a luchadora para sustituir los cultivos ilícitos',
        'https://elcomercio.pe/tecnologia/etelvina-ramos-de-cocalera-a-luchadora-para-sustituir-los-cultivos-ilicitos-noticia/'
    ),
    (
        'Autor no disponible',
        '2024-03-06',
        'https://elcomercio.pe/resizer/v2/Q27M2NIBZVCKDMY2XSFKPAATB4.jpg?auth=e8e207aa79f88d64783b0585b88f5224ee21eade18aa069ca3e27179349208f3&width=320&height=180&quality=75&smart=true',
        'Un futuro para ellas',
        'https://elcomercio.pe/opinion/colaboradores/ninas-mujeres-uniones-tempranas-forzadas-noticia/'
    ),
    (
        'Autor no disponible',
        '2024-03-05',
        'https://elcomercio.pe/resizer/v2/Q6GVMZ534FDOLN3KSFNUX6MGEA.jpg?auth=22471efb3f771348ba15496f533a0b37b888db49cecd6477f7fdb09a68b8481b&width=320&height=180&quality=75&smart=true',
        'Impulsando una fuerza transformadora',
        'https://elcomercio.pe/economia/dia-1/impulsando-una-fuerza-transformadora-opinion-dia-1-noticia/'
    ),
    (
        'Autor no disponible',
        '2024-03-02',
        'https://elcomercio.pe/resizer/v2/NJUZHPWP3RGG7IEYESHCLEIKVA.jpg?auth=34d0f2908f6d0bf1a139d9199d07c7c52a7f9acaa5900a231a18b9e44f8cb5a5&width=320&height=180&quality=75&smart=true',
        'Soraida Chindoy: la guardiana indígena que defiende de la minería a las montañas del Putumayo',
        'https://elcomercio.pe/tecnologia/ecologia/soraida-chindoy-la-guardiana-indigena-que-defiende-de-la-mineria-a-las-montanas-del-putumayo-noticia/'
    ),
    (
        'Autor no disponible',
        '2024-03-01',
        'https://elcomercio.pe/resizer/v2/R5D5P6JTTZH7XHWBCTERIC57NY.jpg?auth=a5538c03ec2b5b7b89f185f2861541909bd063e4581e1ef038838b513a27baae&width=320&height=180&quality=75&smart=true',
        'Maydany Salcedo: la defensora que encuentra refugio en el agua',
        'https://elcomercio.pe/tecnologia/ecologia/maydany-salcedo-la-defensora-que-encuentra-refugio-en-el-agua-noticia/'
    ),
    (
        'Autor no disponible',
        '2024-02-29',
        'https://elcomercio.pe/resizer/v2/WKR5FWY5ABCNDFOIH36UIDMZN4.jpg?auth=408124933dd73087923d3d6e13d4951d4afa44ddfe1002280f24c255a59863c6&width=320&height=180&quality=75&smart=true',
        'Alis Ramírez: la defensora de la Amazonía colombiana que hoy vive refugiada en Nueva Zelanda',
        'https://elcomercio.pe/tecnologia/ecologia/alis-ramirez-la-defensora-de-la-amazonia-colombiana-que-hoy-vive-refugiada-en-nueva-zelanda-noticia/'
    ),
    (
        'Michela Casassa',
        '2024-11-26',
        'https://elcomercio.pe/resizer/v2/PIW5BR3EMRF3ZDZ2DZ4USTQJ7Q.png?auth=b425676fbefd7a6c8e335c8e8a35922e1610ae1d62e530c4ae007e6663f9101b&width=320&height=180&quality=75&smart=true',
        'Referentes top',
        'https://elcomercio.pe/economia/opinion/lideres-femeninos-referentes-top-christine-lagarde-ursula-von-der-leyen-angela-merkel-noticia/'
    );
