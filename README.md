# MaiCafe

[![CI build](https://github.com/de-odex/mai_cafe/actions/workflows/ci.yml/badge.svg)](https://github.com/de-odex/mai_cafe/actions/workflows/ci.yml) [![Coverage Status](https://coveralls.io/repos/github/de-odex/mai_cafe/badge.svg?branch=master)](https://coveralls.io/github/de-odex/mai_cafe?branch=master)

An achievement tracker website for the game maimai.

## Requirements

- Elixir 1.12 with Erlang/OTP 22+
  - Ideally, Elixir 1.14 with OTP 24+
- PostgreSQL 8.4+ (postgrex requirement)

## Development

Postgres must be running beforehand.

```
# install dependencies
mix deps.get

# setup (create and migrate) database
mix ecto.setup

# run server like a regular long-running binary
mix phx.server
# or within an interactive environment
iex -S mix phx.server
```
The server will run in [`localhost:4000`](http://localhost:4000).

