CREATE DATABASE DB_CURSO_DA_MINHA_VIDA;
USE DB_CURSO_DA_MINHA_VIDA;

CREATE TABLE TB_CATEGORIAS (
ID BIGINT AUTO_INCREMENT,
AREA VARCHAR(255) NOT NULL,
MODALIDADE VARCHAR(255),
PRIMARY KEY (ID)
);

CREATE TABLE TB_PRODUTOS(
ID BIGINT AUTO_INCREMENT,
TITULO VARCHAR(255) NOT NULL,
PERIODO VARCHAR(255),
PRECO FLOAT (6,2),
PAGAMENTO VARCHAR(255),
CATEGORIA_ID BIGINT,
PRIMARY KEY (ID),
FOREIGN KEY (CATEGORIA_ID) REFERENCES TB_CATEGORIAS (ID)
);

INSERT INTO TB_CATEGORIAS (AREA,MODALIDADE) VALUES ("MUSICA", "PRESENCIAL");
INSERT INTO TB_CATEGORIAS (AREA,MODALIDADE) VALUES ("HUMANIDADES", "EAD");
INSERT INTO TB_CATEGORIAS (AREA,MODALIDADE) VALUES ("EXATAS", "EAD");
INSERT INTO TB_CATEGORIAS (AREA,MODALIDADE) VALUES ("TECNOLOGIA", "PRESENCIAL");
INSERT INTO TB_CATEGORIAS (AREA,MODALIDADE) VALUES ("EMPREENDA", "PRESENCIAL");
SELECT * FROM TB_CATEGORIAS;


INSERT INTO TB_PRODUTOS (TITULO,PERIODO,PRECO,PAGAMENTO,CATEGORIA_ID) VALUES ("INICIACAO EM COSTURA", "TARDE", 70 ,"PIX OU BOLETO A VISTA",5);
INSERT INTO TB_PRODUTOS (TITULO,PERIODO,PRECO,PAGAMENTO,CATEGORIA_ID) VALUES ("INICIACAO EM BANCO DE DADOS", "TARDE", 350 ,"CREDITO OU DEBITO, ACEITA PARCELAMENTO",4);
INSERT INTO TB_PRODUTOS (TITULO,PERIODO,PRECO,PAGAMENTO,CATEGORIA_ID) VALUES ("TUDO SOBRE GUERRA FRIA", "MANHA", 150 ,"QUALQUER MEIO DE PAGAMENTO A VISTA",2);
INSERT INTO TB_PRODUTOS (TITULO,PERIODO,PRECO,PAGAMENTO,CATEGORIA_ID) VALUES ("CONTRATEMPO RITMICO", "NOITE", 150 ,"PIX OU BOLETO A VISTA",1);
INSERT INTO TB_PRODUTOS (TITULO,PERIODO,PRECO,PAGAMENTO,CATEGORIA_ID) VALUES ("INSTRUMENTOS DE TECLAS", "MATUTINO", 350 ,"CREDITO OU DEBIDO, ACEITA PARCELAMENTO",1);
INSERT INTO TB_PRODUTOS (TITULO,PERIODO,PRECO,PAGAMENTO,CATEGORIA_ID) VALUES ("FUNDAMENTOS DE SEGURANCA DA INFORMACAO COM FABIO CABRINI", "NOITE", 700 ,"QUALQUER MEIO DE PAGAMENTO, ACEITA PARCELAMENTO",4);

SELECT * FROM TB_PRODUTOS;

SELECT * FROM TB_PRODUTOS WHERE PRECO > 100;
SELECT * FROM TB_PRODUTOS WHERE PRECO BETWEEN 70 AND 150;
SELECT * FROM TB_PRODUTOS WHERE TITULO LIKE "I%";
SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_PRODUTOS.CATEGORIA_ID = TB_CATEGORIAS.ID;
SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_PRODUTOS.CATEGORIA_ID = TB_CATEGORIAS.ID WHERE CATEGORIA_ID = 1;