# dbt Analytics Engineering

Hands-on dbt project built as part of the Coursera **Intro to Analytics Engineering** course by Edureka.

## Tech Stack
- **Warehouse:** PostgreSQL 16 (local)
- **Transformation:** dbt (data build tool)
- **Version Control:** GitHub

## Project Structure
```
dbt-analytics-engineering/
├── models/
│   ├── staging/           # Clean raw source data (views)
│   │   ├── stg_customers.sql
│   │   ├── stg_orders.sql
│   │   └── staging.yml    # Tests and documentation
│   └── marts/             # Business-ready dimension and fact tables
│       ├── dim_customer.sql
│       ├── dim_product.sql
│       ├── dim_date.sql
│       ├── fact_orders.sql
│       └── marts.yml      # Tests and documentation
├── seeds/                 # Static CSV data loaded into the warehouse
│   ├── customers.csv      # 14 customers across 14 countries
│   └── orders.csv         # 20 orders across 3 product categories
├── analyses/              # Ad-hoc SQL analyses
├── macros/                # Reusable Jinja macros
├── tests/                 # Custom data tests
├── dbt_project.yml        # dbt project configuration
└── profiles.yml.example   # Example connection config
```

## Data Model (Star Schema)

```
dim_date
    |
dim_customer ── fact_orders ── dim_product
```

| Model | Type | Description |
|---|---|---|
| `stg_customers` | view | Cleaned customer data from seeds |
| `stg_orders` | view | Cleaned order data from seeds |
| `dim_customer` | table | Customer dimension (14 rows) |
| `dim_product` | table | Product dimension (20 unique products) |
| `dim_date` | table | Date dimension (all days in 2025) |
| `fact_orders` | table | Order facts with keys to all dimensions (20 rows) |

## Setup Instructions

### Prerequisites
- PostgreSQL 16
- Python + pip
- dbt-postgres

### 1. Install dbt
```bash
pip install dbt-postgres
```

### 2. Clone this repo
```bash
git clone https://github.com/ramprakash28/dbt-analytics-engineering.git
cd dbt-analytics-engineering
```

### 3. Create the database
```bash
createdb dbt
```

### 4. Configure your profile
Copy `profiles.yml.example` to `~/.dbt/profiles.yml` and update with your PostgreSQL credentials.

### 5. Run dbt
```bash
dbt debug       # test connection
dbt seed        # load CSV data into PostgreSQL
dbt run         # build all models
dbt test        # run data quality tests
```
