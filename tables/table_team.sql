CREATE TABLE `proyecto2`.`team` (
  `id_team` INT NOT NULL AUTO_INCREMENT,
  `team_name` VARCHAR(45) NULL,
  `id_capitan` INT NULL,
  `team_logo` VARCHAR(45) NULL,
  `id_alignment` INT NULL,
  PRIMARY KEY (`id_team`),
  INDEX `id_alignment_idx` (`id_alignment` ASC),
  CONSTRAINT `id_alignment`
    FOREIGN KEY (`id_alignment`)
    REFERENCES `proyecto2`.`alignment` (`alignment_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
