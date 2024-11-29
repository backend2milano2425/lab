# Lab

Ambiente lab kubernetes cloud native.

## Requisiti
- Shell posix
- Docker Desktop || Docker CE
- Docker Compose

## Setup

- Clonare il repository: `git clone git@github.com:backend2milano2425/lab.git`
- Modificare il file .env (modificare solo i percorsi)
- Modificare il file src/config/cluster-config.yaml (modificare solo i percorsi)
- Avviare l'ambiente: `docker compose up -d`
- Visualizzare i log: `docker compose logs -f`
- Stoppare i log una volta avviato: CTRL + C
- Avviare il setup automatico: `bash bin/setup.sh`
- Aggiungere la entry nel file hosts: `127.0.0.1  lab-control-plane`
