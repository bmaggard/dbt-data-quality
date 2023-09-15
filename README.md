# dbt-data-quality
Data quality checks in your dbt flow.

This repository helps you understand the different data quality checks available in [dbt](https://www.getdbt.com/).

You can clone the repository, create a `supabase` account, write the `.env` file and run the commands according to the environment setup, and get an environment where you can practice testing with dbt **for free**.

## Author
I'm Bruno Gonzalez from 🇺🇾, working as a senior data engineer, and writing about data quality and data engineering.
- [Substack](https://dataqualityguru.substack.com/)
- [LinkedIn](https://www.linkedin.com/in/brunouy/)

## Tools
Postgres database: [supabase](https://supabase.com/). Create a free account and get the credentials to create the `.env` file.

## Environment setup
Create `.env` file with the following structure:
```
POSTGRES_HOST=<postgres_host>
POSTGRES_USER=<postgres_user>
POSTGRES_PASSWORD=<postgres_password>
POSTGRES_DATABASE=<postgres_database>
```

Commands to setup the environment:
```
conda create -n dbtdq python=3.9
conda activate dbtdq
pip install -r requirements.txt
export $(cat .env | xargs)
dbt seed
dbt run
dbt deps
```

## Example
Modified from dbt-labs [jaffle_shop](https://github.com/dbt-labs/jaffle_shop).

Changes:
- `seeds/raw_customers.csv`
    - Added customer `101` without `first_name`.
    - Added customer `102` without `last_name`.
    - Added customer `103` with a different `last_name` pattern.
    - Added customer `104` with inconsistent case in `first_name`.
- `seeds/raw_orders.csv`
    - Duplicated order with `id = 98`
    - Added order `100` with an `order_date` in the future.
    - Added order `101` with an inexistent `user_id`.
    - Added order `102` with a wrong `status`.
    - Added order `103` without issues.
- `seeds/raw_payments.csv`
    - Added payment `114` for order `100` with a wrong `payment_method`.
    - Added payment `115` for order `103` with a huge amount (outlier).