# Local development database

This folder contains a PostgreSQL dump from a working local development setup.

Restore it into an empty local database named `4gaBoards`:

```powershell
$env:PGPASSWORD='postgres'
createdb -U postgres -h localhost 4gaBoards
psql -U postgres -h localhost -d 4gaBoards -f database\4gaBoards-local.sql
```

The checked-in `server/.env` points to:

```text
postgresql://postgres:postgres@localhost/4gaBoards
```

Default login:

```text
demo / demo
```
