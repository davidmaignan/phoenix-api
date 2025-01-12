# phoenix-api

## Installation

```
docker exec -it postgres_tutorials psql -U <user> -d postgres
``

```
mix local.hex
mix archive.install hex phx_new
mix phx.new phoenix-api

```

## Run

```
mix ecto.create
mix phx.server

iex -S mix phx.server
```