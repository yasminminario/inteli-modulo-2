CREATE TABLE users (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    Nomes MEDIUMTEXT NOT NULL,
    Gêneros MEDIUMTEXT NOT NULL,
    Emails MEDIUMTEXT NOT NULL,
    Senhas MEDIUMTEXT NOT NULL,
    NíveisAcesso VARCHAR(50) NOT NULL
);

CREATE TABLE manuais (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    Nomes MEDIUMTEXT NOT NULL,
    Descrições MEDIUMTEXT NOT NULL,
    Tipos MEDIUMTEXT NOT NULL,
    Arquivos MEDIUMTEXT NOT NULL,
    DataPublicação DATE NOT NULL
);

CREATE TABLE assembleLines (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    Nomes INTEGER,
    Descrições MEDIUMTEXT DEFAULT 'NULL',
    idAdministradorAssociado INTEGER DEFAULT NULL
);

CREATE TABLE products (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    Nomes INTEGER,
    LinhaDeMontagemAssociada INTEGER
);

CREATE TABLE tasks (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    idMontadorAssociado INTEGER,
    idManualAssociado INTEGER NOT NULL,
    Status ENUM,
    idEngenheiroAssociado ENUM,
    Prioridades MEDIUMTEXT DEFAULT 'NULL',
    FOREIGN KEY (idMontadorAssociado) REFERENCES users(id),
    FOREIGN KEY (idManualAssociado) REFERENCES manuais(id)
);
