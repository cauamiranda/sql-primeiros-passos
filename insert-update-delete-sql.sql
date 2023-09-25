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



SELECT * 
	FROM aluno 
	WHERE nome = 'Nico Nunes';
	
DELETE 
	FROM aluno
	WHERE nome = 'Nico Nunes';