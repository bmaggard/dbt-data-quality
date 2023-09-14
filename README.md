# dbt-data-quality
Data quality checks in your dbt flow.

Modified from dbt-labs [jaffle_shop](https://github.com/dbt-labs/jaffle_shop).

## Environment setup
```
conda create -n dbtdq python=3.9
conda activate dbtdq
pip install -r requirements.txt
```

`.env` file structure:
```
POSTGRES_HOST=<postgres_host>
POSTGRES_USER=<postgres_user>
POSTGRES_PASSWORD=<postgres_password>
POSTGRES_DATABASE=<postgres_database>
```

## Tools
Postgres database: [supabase](https://supabase.com/).