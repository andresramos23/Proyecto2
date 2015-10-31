CREATE TABLE `proyecto2`.`playerxteam` (
  `idplayer` INT NOT NULL,
  `id_team` INT NOT NULL,
  PRIMARY KEY (`idplayer`, `id_team`),
  INDEX `id_team_idx` (`id_team` ASC),
  CONSTRAINT `id_player`
    FOREIGN KEY (`idplayer`)
    REFERENCES `proyecto2`.`player` (`id_player`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_team`
    FOREIGN KEY (`id_team`)
    REFERENCES `proyecto2`.`team` (`id_team`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
