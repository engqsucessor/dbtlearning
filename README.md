# dbtlearning

This repository contains a simple dbt project configured to run with DuckDB.

## Setup

1. Create an isolated environment using [`uv`](https://github.com/astral-sh/uv):
   ```bash
   uv venv .venv
   source .venv/bin/activate
   uv pip install dbt-duckdb
   ```
2. Create a `profiles.yml` (one is provided in `my_dbt_project/profiles.yml`):
   ```yaml
   my_dbt_project:
     target: dev
     outputs:
       dev:
         type: duckdb
         path: my_duckdb.db
         threads: 1
   ```
3. Initialize the project:
   ```bash
   cd my_dbt_project
   dbt run
   dbt test
   ```

These commands will build the models locally using DuckDB.
