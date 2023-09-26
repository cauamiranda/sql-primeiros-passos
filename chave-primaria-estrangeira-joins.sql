integer
real
serial
numeric

varchar(n)
char(n)
text

boolean

date
time
timestamp

CREATE TABLE aluno (
	id SERIAL,
	nome VARCHAR(255),
	cpf CHAR(11),
	observacao TEXT,
	idade INTEGER,
	dinheiro NUMERIC(10,2),
	altura REAL,
	ativo BOOLEAN,
	data_nascimento DATE,
	hora_aula TIME,
	matriculado_em TIMESTAMP
)

SELECT * FROM aluno

INSERT INTO aluno (
	nome, 
	cpf, 
	observacao, 
	idade, 
	dinheiro, 
	altura, 
	ativo, 
	data_nascimento,
	hora_aula,
	matriculado_em
) 
VALUES (
	'Diogo Marques', 
	'12345678901', 
	'teste de inserção de dados', 
	27, 
	145343.32, 
	1.81, 
	TRUE, 
	'1996-03-24',
	'17:38:02',
	'2023-09-25 16:13:45'
);

SELECT * 
	FROM aluno 
	WHERE id = 1;

UPDATE aluno 
	SET nome = 'Nico Nunes',
	cpf = '10987654321', 
	observacao = 'Testando o UPDATE', 
	idade = 38, 
	dinheiro = 25.43, 
	altura = 1.79, 
	ativo = FALSE, 
	data_nascimento = '1988-01-21'
	WHERE id = 1;


SELECT nome AS "Nome do Aluno",
       idade,
       matriculado_em AS quando_se_matriculou
    FROM aluno;


INSERT INTO aluno (nome) VALUES ('Vinicius Dias');
INSERT INTO aluno (nome) VALUES ('Nico Steppat');
INSERT INTO aluno (nome) VALUES ('João Roberto');
INSERT INTO aluno (nome) VALUES ('Diogo');

SELECT *
	FROM aluno
	WHERE nome LIKE '% %';
	
	
SELECT * 
	FROM aluno
	WHERE cpf IS NOT NULL;
	
SELECT * 
	FROM aluno 
	WHERE idade = 27;

SELECT * 
	FROM aluno 
	WHERE idade BETWEEN 12 AND 30;
	
	
SELECT * 
	FROM aluno 
	WHERE ativo = false;
	

	
SELECT * 
	FROM aluno 
	WHERE nome LIKE 'D%'
		AND cpf IS NOT NULL;
		
	
SELECT * 
	FROM aluno 
	WHERE nome LIKE 'Diog%'
	OR NOME LIKE 'Rodrigo';
	
	
	
	
DROP TABLE curso;
CREATE TABLE curso (
	id INTEGER PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (NULL, NULL);

INSERT INTO curso (id, nome) VALUES	(1, 'HTML');
INSERT INTO curso (id, nome) VALUES	(2, 'JAVASCRIPT');

SELECT * FROM curso;


DROP TABLE aluno;

CREATE TABLE aluno (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO aluno (nome) VALUES ('Diogo');
INSERT INTO aluno (nome) VALUES ('Vinicius');

SELECT * FROM aluno;

SELECT * FROM curso;

DROP TABLE aluno_curso;

CREATE TABLE aluno_curso(
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),
	FOREIGN KEY (aluno_id) REFERENCES aluno (id),
	FOREIGN KEY (curso_id) REFERENCES curso (id)
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);

SELECT * FROM aluno_curso;

SELECT * 
	FROM aluno
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	JOIN curso ON curso.id = aluno_curso.curso_id;

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,2);


INSERT INTO aluno (nome) VALUES ('Nico');
INSERT INTO CURSO (id, nome) VALUES (3, 'CSS');


SELECT * 
	FROM aluno
	FULL JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	FULL JOIN curso ON curso.id = aluno_curso.curso_id;

