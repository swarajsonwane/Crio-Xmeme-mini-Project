DROP TABLE IF EXISTS memedetails;
CREATE TABLE `xmeme`.`memedetails` (
 `id` INT NOT NULL AUTO_INCREMENT,
 `name` VARCHAR(50) NULL,
 `url` VARCHAR(200) NULL,
 `caption` VARCHAR(200) NULL,
 PRIMARY KEY (`id`),
 UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);