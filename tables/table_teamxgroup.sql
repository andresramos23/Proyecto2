CREATE TABLE `proyecto2`.`teamxgroup` (
  `id_team` INT NOT NULL,
  `id_group` INT NOT NULL,
  `win_match` INT NULL,
  `played_match` INT NULL,
  `tied_match` INT NULL,
  `lose_match` INT NULL,
  `goal_on_favor` INT NULL,
  `goal_against` INT NULL,
  PRIMARY KEY (`id_team`, `id_group`),
  INDEX `group_id_tp_idx` (`id_group` ASC),
  CONSTRAINT `team_id_tp`
    FOREIGN KEY (`id_team`)
    REFERENCES `proyecto2`.`team` (`id_team`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `group_id_tp`
    FOREIGN KEY (`id_group`)
    REFERENCES `proyecto2`.`group` (`id_group`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
