# Database
Modellizzare la struttura di un database per memorizzare tutti i dati riguardanti una università:
sono presenti diversi Dipartimenti (es.: Lettere e Filosofia, Matematica, Ingegneria ecc.);
ogni Dipartimento offre più Corsi di Laurea (es.: Civiltà e Letterature Classiche, Informatica, Ingegneria Elettronica ecc..)
ogni Corso di Laurea prevede diversi Corsi (es.: Letteratura Latina, Sistemi Operativi 1, Analisi Matematica 2 ecc.);
ogni Corso può essere tenuto da diversi Insegnanti;
ogni Corso prevede più appelli d'Esame;
ogni Studente è iscritto ad un solo Corso di Laurea;
ogni Studente può iscriversi a più appelli di Esame;
per ogni appello d'Esame a cui lo Studente ha partecipato, è necessario memorizzare il voto ottenuto, anche se non sufficiente.
Pensiamo a quali entità (tabelle) creare per il nostro database e cerchiamo poi di stabilirne le relazioni. Infine, andiamo a definire le colonne e i tipi di dato di ogni tabella.

Utilizzare https://www.drawio.com/ per la creazione dello schema.
Esportare quindi il diagramma in jpg e caricarlo nella repo.

# Table name : università (entity name: istruzione)

COlumns:

- dipartimenti
- corsi_di_laurea
- corsi
- insegnanti
- corsi_insegnanti
- appelli_esame
- studenti
- iscrizioni_appelli


# dipartimenti

- id  BIGINT PK NOTNULL
- nome VARCHAR(100) NOTNULL
- created_at DATETIME NOT NULL DEFAULT NOW()
- updated_at DATETIME NOT NULL DEFAULT NOW()

# corsi_di_laurea

- id BIGINT PK NOTNULL
- nome VARCHAR(100) NOTNULL
- id_dipartimento BIGINT NOTNULL
- created_at DATETIME NOT NULL DEFAULT NOW()
- updated_at DATETIME NOT NULL DEFAULT NOW()

# corsi

- id BIGINT PK NOTNULL
- nome VARCHAR(100) NOTNULL
- id_corso_laurea BIGINT NOTNULL
- created_at DATETIME NOT NULL DEFAULT NOW()
- updated_at DATETIME NOT NULL DEFAULT NOW()

# insegnanti

- id BIGINT PK NOTNULL
- nome VARCHAR(50) NOTNULL
- cognome VARCHAR(50) NOTNULL
- email  VARCHAR(100) NULL UNIQUE
- created_at DATETIME NOT NULL DEFAULT NOW()
- updated_at DATETIME NOT NULL DEFAULT NOW()

# corsi_insegnanti

- id_corso  BIGINT NOTNULL
- id_insegnante BIGINT NOTNULL
- created_at DATETIME NOT NULL DEFAULT NOW()
- updated_at DATETIME NOT NULL DEFAULT NOW()

# appelli_esame

- id BIGINT PK NOTNULL
- data_appello DATETIME NOTNULL
- aula VARCHAR(50) NULL
- id_corso BIGINT NOTNULL
- created_at DATETIME NOT NULL DEFAULT NOW()
- updated_at DATETIME NOT NULL DEFAULT NOW()

# studenti

- id BIGINT PK NOTNULL
- nome VARCHAR(50)NOTNULL
- cognome VARCHAR(50) NOTNULL
- matricola VARCHAR(20) NOTNULL UNIQUE
- email VARCHAR(100) NULL UNIQUE
- id_corso_laurea BIGINT NOTNULL
- created_at DATETIME NOT NULL DEFAULT NOW()
- updated_at DATETIME NOT NULL DEFAULT NOW()

# iscrizioni_appelli

- id_studente BIGINT PK NOTNULL
- id_appello BIGINT PK NOTNULL
- voto TINYINT NULL
- created_at DATETIME NOT NULL DEFAULT NOW()
- updated_at DATETIME NOT NULL DEFAULT NOW()