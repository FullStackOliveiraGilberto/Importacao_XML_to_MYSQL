CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `cpf` varchar(10) DEFAULT NULL,
  `email` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `sexo` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `cidade` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


C:\ProgramData\MySQL\MySQL Server 5.7\Uploads\	
USE cadastros;
 
LOAD XML INFILE 'C:\temp\ProjetoGilberto\Importacao_XML_MYSQL\CAD_XML.xml'
INTO TABLE cliente
CHARACTER SET utf8
ROWS IDENTIFIED BY '<cliente>';

SHOW VARIABLES LIKE "secure_file_priv";