

/*create database Cadastros 

CREATE TABLE cadastros.`cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `cpf` varchar(10) DEFAULT NULL,
  `email` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `sexo` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `cidade` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
*/

LOAD XML INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/CAD_XML.xml'
INTO TABLE cliente
#CHARACTER SET utf8
ROWS IDENTIFIED BY '<cliente>';

select * from cliente


0	25	10:57:58	LOAD XML INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/CAD_XML.xml'
 INTO TABLE cliente
 CHARACTER SET utf8
 ROWS IDENTIFIED BY '<cliente>'	
 Error Code: 1366. Incorrect string value: '\xE3o Roq...' for column 'cidade' at row 1	0.000 sec


SELECT @@GLOBAL.secure_file_priv;

#to cvs
SELECT * FROM cliente 
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/CAD_XML3.xml' 
FIELDS TERMINATED BY ',';


SELECT * FROM test_wp_users
#ORDER BY user_registered ASC
INTO OUTFILE 'C:/temp/ProjetoGilberto/Importacao_XML_MYSQL'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';


09:41:06	SELECT * FROM cliente  INTO OUTFILE 'C:/temp/ProjetoGilberto/Importacao_XML_MYSQL'	
Error Code: 1290. The MySQL server is running with the --secure-file-priv option so it cannot execute this statement	0.000 sec

SHOW VARIABLES LIKE "secure_file_priv";

