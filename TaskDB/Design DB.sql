CREATE TABLE `tb_postagem` (
	`id` INT(255) NOT NULL AUTO_INCREMENT,
	`localpart` varchar(255) NOT NULL,
	`localcheg` varchar(255) NOT NULL,
	`horario` DATETIME(8) NOT NULL,
	`avaliacao` TEXT(255) NOT NULL,
	`usuario_id` INT(255) NOT NULL,
	`tema_id` INT(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_usuario` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`email` varchar(255) NOT NULL UNIQUE,
	`senha` varchar(15) NOT NULL,
	`nome` varchar(50) NOT NULL UNIQUE,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_tema` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`trajCurto` BOOLEAN(1) NOT NULL,
	`trajLongo` varchar(255) NOT NULL,
	`denuncia` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk0` FOREIGN KEY (`usuario_id`) REFERENCES `tb_usuario`(`id`);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk1` FOREIGN KEY (`tema_id`) REFERENCES `tb_tema`(`id`);

