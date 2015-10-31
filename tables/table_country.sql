CREATE TABLE `proyecto2`.`country` (
  `id_country` INT NOT NULL AUTO_INCREMENT,
  `country_name` VARCHAR(45) NULL,
  `id_continent` INT NULL,
  PRIMARY KEY (`id_country`),
  INDEX `id_continent_idx` (`id_continent` ASC),
  CONSTRAINT `id_continent`
    FOREIGN KEY (`id_continent`)
    REFERENCES `proyecto2`.`continent` (`id_continent`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
