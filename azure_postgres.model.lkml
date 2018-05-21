connection: "postgres"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: azure_postgres_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: azure_postgres_default_datagroup

explore: link {}

explore: pg_stat_statements {}
