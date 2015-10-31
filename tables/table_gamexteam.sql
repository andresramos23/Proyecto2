CREATE TABLE `proyecto2`.`gamexteam` (
  `id_game` INT NOT NULL,
  `id_team` INT NOT NULL,
  `expulsions` INT NULL,
  `savers` INT NULL,
  `corners` INT NULL,
  `goalV` INT NULL,
  `goalH` INT NULL,
  `yellow_card` INT NULL,
  `red_card` INT NULL,
  PRIMARY KEY (`id_game`, `id_team`),
  INDEX `id_team_idx` (`id_team` ASC),
  CONSTRAINT `id_game_x`
    FOREIGN KEY (`id_game`)
    REFERENCES `proyecto2`.`game` (`id_game`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_team_x`
    FOREIGN KEY (`id_team`)
    REFERENCES `proyecto2`.`team` (`id_team`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
