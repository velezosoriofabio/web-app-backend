-- MySQL Script generated by MySQL Workbench
-- Mon Jan 20 09:53:42 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_companies
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `companies`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `materiales` ;

CREATE TABLE IF NOT EXISTS `mydb`.`materiales` (
  `id_material` INT NOT NULL,
  `nombre_material` VARCHAR(45) NOT NULL,
  `simbolo_material` VARCHAR(45) NULL,
  `categoria_material` VARCHAR(45) NULL,
  `descripcion_material` VARCHAR(45) NULL,
  PRIMARY KEY (`id_material`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`aleaciones` (
  `id_aleaciones` INT NOT NULL,
  `nombre_aleacion` VARCHAR(45) NOT NULL,
  `simbolo_aleacion` VARCHAR(45) NOT NULL,
  `descripcion_aleacion` VARCHAR(45) NULL,
  PRIMARY KEY (`id_aleaciones`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`dispositivo` (
  `id_dispositivo` INT NOT NULL,
  `nombre_dispositivo` VARCHAR(45) NOT NULL,
  `descripcion_dispositivo` VARCHAR(45) NULL,
  `imagen_dispositivo` TEXT(255) NULL,
  PRIMARY KEY (`id_dispositivo`))
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

--POBLADO DE DATOS MATERIALES
INSERT INTO materiales(nombre_material, simbolo_material, categoria_material, descripcion_material) VALUES('Titanio','Ti','Metal','El titanio es un material biomédico altamente valorado debido a su excepcional biocompatibilidad, resistencia a la corrosión, alta resistencia y baja densidad, lo que lo hace idóneo para aplicaciones médicas como implantes ortopédicos y dispositivos dentales. Su capacidad de osteointegración, durabilidad a largo plazo y facilidad de mecanizado hacen que sea esencial en la fabricación de dispositivos médicos que requieren adaptabilidad y longevidad, permitiendo mejorar la calidad de vida de pacientes que necesitan prótesis y tratamientos médicos implantables');
INSERT INTO materiales(nombre_material, simbolo_material, categoria_material, descripcion_material) VALUES('Vanadio','V', 'Metal','El vanadio es un elemento que ha demostrado su utilidad en el campo de los biomateriales. Su principal ventaja radica en su capacidad para formar aleaciones, como el titanio-vanadio, que combinan la biocompatibilidad del titanio con una mayor resistencia mecánica. Estas aleaciones son particularmente valiosas en aplicaciones de dispositivos médicos que requieren fuerza y durabilidad, como placas y tornillos en cirugía ortopédica. Además, el vanadio es apreciado por su capacidad de liberar iones que promueven la formación ósea, lo que favorece la osteointegración. Aunque su uso no es tan extendido como el titanio, el vanadio sigue siendo un material prometedor en el desarrollo de biomateriales avanzados');
INSERT INTO materiales(nombre_material, simbolo_material, categoria_material, descripcion_material) VALUES('Cobalto','Co', 'Metal','El cobalto es un material que se utiliza en aplicaciones biomédicas, especialmente en aleaciones con otros metales como el cromo y el molibdeno, para crear aceros inoxidables y aleaciones de cobalto-cromo que son valiosos en la fabricación de dispositivos médicos, como prótesis articulares y componentes de implantes ortopédicos. Estas aleaciones ofrecen una excelente resistencia mecánica y durabilidad, lo que es esencial en aplicaciones que experimentan cargas repetidas, como las articulaciones artificiales. Sin embargo, es importante destacar que, en algunos casos, el cobalto puede liberarse en el cuerpo y causar reacciones adversas, por lo que su uso en biomateriales se realiza con precaución y bajo monitoreo constante para minimizar riesgos y garantizar la seguridad de los pacientes.');
INSERT INTO materiales(nombre_material, simbolo_material, categoria_material, descripcion_material) VALUES('Polietileno de alta densidad','PEAD', 'Polimero','El polietileno de alta densidad (PEAD) es un polímero termoplástico que, aunque no es un biomaterial en sí mismo, se ha utilizado en aplicaciones biomédicas debido a su durabilidad, biocompatibilidad y resistencia química. En el contexto de los biomateriales, el PEAD se emplea principalmente para fabricar componentes como prótesis articulares y componentes ortopédicos, gracias a su capacidad para soportar cargas mecánicas y su bajo desgaste en entornos biológicos. Su superficie lisa y biocompatible minimiza la fricción y reduce la irritación en las articulaciones artificiales. Además, su facilidad de procesamiento y moldeado lo hacen útil para una variedad de aplicaciones médicas, lo que lo convierte en un material valioso en la mejora de la calidad de vida de los pacientes que requieren dispositivos médicos de larga duración');



-- POBLADO DE DATOS DISPOSITIVO
INSERT INTO dispositivo(nombre_dispositivo, descripcion_dispositivo, imagen_dispositivo) VALUES('Implante de cadera','Los implantes de cadera son dispositivos médicos utilizados para reemplazar articulaciones de cadera dañadas o desgastadas. Están compuestos generalmente de aleaciones de titanio, cobalto-cromo-molibdeno o polietileno de ultra alto peso molecular (UHMWPE) debido a sus propiedades de alta resistencia y biocompatibilidad. Estos implantes son esenciales para mejorar la movilidad y aliviar el dolor en pacientes con problemas articulares en la cadera. Su importancia radica en restaurar la calidad de vida de los pacientes al permitirles mantener un estilo de vida activo y cómodo. Los componentes clave incluyen una cabeza esférica y una copa que se insertan en el fémur y la cavidad de la cadera, respectivamente','imagen de cadera');
INSERT INTO dispositivo(nombre_dispositivo, descripcion_dispositivo, imagen_dispositivo) VALUES('Stent Vascular','Los stents vasculares son pequeñas mallas tubulares, comúnmente hechas de Nitinol u otras aleaciones metálicas, que se utilizan para mantener abiertos los vasos sanguíneos y restaurar el flujo sanguíneo en arterias obstruidas. Son fundamentales en el tratamiento de enfermedades cardiovasculares, como la enfermedad arterial coronaria, al prevenir la obstrucción de las arterias y reducir el riesgo de ataques cardíacos. Su importancia radica en mejorar la salud cardiovascular de los pacientes. Los principales componentes incluyen el stent en sí, que se expande para mantener la arteria abierta','imagen stent');
INSERT INTO dispositivo(nombre_dispositivo, descripcion_dispositivo, imagen_dispositivo) VALUES('Prótesis de rodilla','Las prótesis de rodilla son dispositivos médicos diseñados para reemplazar articulaciones de rodilla dañadas o desgastadas. Están fabricadas generalmente con aleaciones de cobalto-cromo-molibdeno debido a su alta resistencia y durabilidad. Estas prótesis restauran la movilidad y alivian el dolor en pacientes con problemas articulares en la rodilla, permitiéndoles volver a realizar actividades diarias y mejorar su calidad de vida. Su importancia radica en restaurar la movilidad y el bienestar de los pacientes. Los componentes clave incluyen una parte superior metálica y una parte inferior que se ancla en el hueso de la pierna.','imagen rodilla');
INSERT INTO dispositivo(nombre_dispositivo, descripcion_dispositivo, imagen_dispositivo) VALUES('Prótesis dental','Las prótesis dentales son dispositivos médicos utilizados para reemplazar dientes perdidos o dañados. Pueden estar hechas de aleaciones como el níquel-cromo o el cobalto-cromo, que son resistentes a la corrosión y biocompatibles. Las prótesis dentales restauran la función masticatoria y la estética dental en pacientes con problemas dentales, mejorando su capacidad para comer y sonreír con confianza. Su importancia radica en mejorar la salud bucal, la digestión y la autoestima de los pacientes. Los componentes clave incluyen la estructura que soporta las coronas o dientes artificiales.','imagen 4');




--POBLADO DE DATOS ALEACIONES
INSERT INTO aleaciones(nombre_aleacion, simbolo_aleacion, descripcion_aleacion) VALUES('Titanio-Aluminio-Vanadio','Ti-6Al-4V','Esta aleación de titanio, compuesta principalmente de titanio, aluminio y vanadio, es ampliamente utilizada en aplicaciones médicas debido a su combinación de alta resistencia y biocompatibilidad. Su capacidad de fusionarse con el hueso y resistir la corrosión lo convierte en un material esencial para implantes ortopédicos, como prótesis de cadera y placas de fijación ósea. La importancia de esta aleación radica en su capacidad para restaurar la movilidad y la calidad de vida de pacientes que necesitan reemplazar articulaciones dañadas');
INSERT INTO aleaciones(nombre_aleacion, simbolo_aleacion, descripcion_aleacion) VALUES('Niquel-Titatio','NitiNol','El Nitinol es una aleación única de níquel y titanio con la asombrosa propiedad de recuperar su forma original después de ser deformada. Esto lo convierte en un material esencial en dispositivos médicos como stents vasculares. Los stents fabricados con Nitinol se expanden y se mantienen en su lugar para mantener las arterias abiertas, evitando la obstrucción y mejorando el flujo sanguíneo. Esta propiedad es crucial para prevenir o tratar afecciones como la enfermedad arterial coronaria. La importancia del Nitinol en medicina radica en su capacidad para mejorar la salud cardiovascular y salvar vidas.');
INSERT INTO aleaciones(nombre_aleacion, simbolo_aleacion, descripcion_aleacion) VALUES('Cobalto-Cromo-Molibdeno','Co-Cr-Mo','Esta aleación, compuesta de cobalto, cromo y molibdeno, es conocida por su resistencia y durabilidad. Se utiliza en implantes ortopédicos, como componentes de prótesis de cadera y rodilla. Su capacidad para soportar altas cargas y desgaste lo hace esencial en la restauración de la movilidad en pacientes con articulaciones dañadas o desgastadas. La importancia del Co-Cr-Mo en medicina radica en su capacidad para aliviar el dolor y mejorar la calidad de vida de los pacientes que requieren reemplazos articulares.');
INSERT INTO aleaciones(nombre_aleacion, simbolo_aleacion, descripcion_aleacion) VALUES('Níquel-Cromo','Ni-Cr','Las aleaciones de níquel-cromo, resistentes a la corrosión y biocompatibles, se utilizan en aplicaciones dentales, como prótesis dentales y coronas. Estos dispositivos restauran la función masticatoria y la estética dental en pacientes con dientes ausentes o dañados. La importancia del Ni-Cr en medicina radica en su capacidad para mejorar la salud bucal, la digestión y la autoestima de los pacientes.');