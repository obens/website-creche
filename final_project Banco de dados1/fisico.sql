CREATE TABLE Aluno (
	MatrA integer NOT NULL,
	CPFA integer NOT NULL,
	CPFp integer NOT NULL,
	CPFM integer NOT NULL ,
	NomA varchar(50) NOT NULL,
	NomR varchar(50) NOT NULL,
	Ender varchar(50) NOT NULL,
	Tur varchar(20) NOT NULL,
	Cert_Nasc date NOT NULL,
	Sem varchar(20) NOT NULL,
	TipoS varchar(20) NOT NULL,
	DataN varchar(20) NOT NULL,
	Idade varchar(20) NOT NULL,
	Alerg varchar(50) NOT NULL,
	Matrp integer NOT NULL,
	CONSTRAINT Aluno_pk PRIMARY KEY (MatrA)
);



CREATE TABLE Responsavel (
	CPF integer NOT NULL,
	Iden varchar(20) NOT NULL,
	Nom varchar(50) NOT NULL,
	Tel integer NOT NULL,
	TelT varchar (30) NOT NULL,
	Email varchar (30) NOT NULL,
	Ender varchar(50)NOT NULL,
	EnderP varchar(50) NOT NULL,
	CONSTRAINT Responsavel_pk PRIMARY KEY (CPF)

);



CREATE TABLE Professor (
	Matrp integer NOT NULL,
	Iden integer NOT NULL,
	CPF integer NOT NULL,
	Nome varchar(30) NOT NULL,
	Email varchar(30) NOT NULL,
	Tel integer NOT NULL,
	Tur varchar(30) NOT NULL,
	HoraT date NOT NULL,
	Ender varchar(50) NOT NULL,
	CONSTRAINT Professor_pk PRIMARY KEY (Matrp)

);



CREATE TABLE Creche (
	CNPJ integer NOT NULL,
	Nom varchar(20) NOT NULL,
	Email varchar(30) NOT NULL,
	Tel integer NOT NULL,
	HoraF date NOT NULL,
	LocS varchar(20) NOT NULL,
	Eder varchar(50) NOT NULL,
	CONSTRAINT Creche_pk PRIMARY KEY (CNPJ)

);



CREATE TABLE Funcionário (
	Matr integer NOT NULL, 
	Iden integer NOT NULL, 
	CPF integer NOT NULL, 
	Nom varchar(20) NOT NULL, 
	Email varchar(30) NOT NULL, 
	Tel integer NOT NULL, 
	HoraT date NOT NULL, 
	ender varchar(50) NOT NULL,
	CONSTRAINT Funcionário_pk PRIMARY KEY (Matr)
);



CREATE TABLE "possui" (
	fk_Aluno__Matricula integer NOT NULL,
	fk_Responsavel_da_crianca_Aluno_pais_ou_outro__CPF integer NOT NULL;

);



ALTER TABLE Aluno ADD CONSTRAINT Aluno_fk0 FOREIGN KEY (Matrp) REFERENCES Professor(Matrp);





ALTER TABLE possui ADD CONSTRAINT possui_fk0 FOREIGN KEY (fk_Aluno__Matricula) REFERENCES Aluno(MatrA);
ALTER TABLE possui ADD CONSTRAINT possui_fk1 FOREIGN KEY (fk_Responsavel_da_crianca_Aluno_pais_ou_outro__CPF) REFERENCES Responsável(CPF);

