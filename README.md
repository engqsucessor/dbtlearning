# dbtlearning

This repository contains a simple dbt project configured to run with DuckDB.

## Setup

1. Install the adapter:
   ```bash
   pip install dbt-duckdb
   ```
2. Create a `profiles.yml` in `~/.dbt/` with a DuckDB profile:
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
