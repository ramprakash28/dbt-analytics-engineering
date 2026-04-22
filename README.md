# dbt Analytics Engineering 

Hands-on dbt project 

## Tech Stack
- **Warehouse:** PostgreSQL (local)
- **Transformation:** dbt (data build tool)
- **Version Control:** GitHub

## Project Structure
```
dbt-analytics-engineering/
├── models/
│   ├── staging/       # Raw source models (1:1 with source tables)
│   └── marts/         # Business-ready models
├── seeds/             # Static CSV data loaded into the warehouse
├── analyses/          # Ad-hoc SQL analyses
├── macros/            # Reusable Jinja macros
├── tests/             # Custom data tests
├── dbt_project.yml    # dbt project configuration
└── profiles.yml       # Database connection config (not committed)
```

## Setup Instructions

### 1. Install dbt
```bash
pip install dbt-postgres
```

### 2. Clone this repo
```bash
git clone https://github.com/ramprakash28/dbt-analytics-engineering.git
cd dbt-analytics-engineering
```

### 3. Configure your profile
Copy `profiles.yml.example` to `~/.dbt/profiles.yml` and update with your PostgreSQL credentials.

### 4. Run dbt
```bash
dbt debug       # test connection
dbt run         # build models
dbt test        # run tests
dbt docs generate && dbt docs serve  # view docs
```
