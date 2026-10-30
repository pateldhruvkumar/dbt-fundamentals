1. What is DBT?
It is the transformation layer.
For example, 
ETL: Extract Tranform Load (Transform layer is done by dbt)
ELT: Extract Load Transform (Transform layer is done by dbt)

2. Why do we need dbt?
It gives us the functionality of making thing dynamic using Jinja Templates. 
Before dbt people use to create SQL function, store procedures and many more.
It also give us a functionality of Templating and Modularity.

3. DBT Platform?
DBT Core (CLI Tools, it is open source, we have to manage it ourselves), 
DBT Cloud (DBT cloud is managed by DBT and it is product build on top of DBT core), 
DBT Canvas (It is a feature on the DBT Cloud, it more like drag and drop feature if are new to coding it can be really helpful)

4. DBT Backbone
DBT models is not a machine learning model, which holds your code (coding part). DBT can only transforms the data it does not provide any compute.
For example, if you are using Databricks or Snowflake then, dbt will transform the data but, it will use the compute from either Databricks or Snowflake or any other platform used by the company.

5. Things required to work with DBT is to install Python 3.12 which is most competiable, Git, VSCode.

6. Also, we need to install UV which is python package, which allows more handons to multiple things.

To install UV: pip install uv

7. Then, to use uv (uv init) which create two files in your folder one is python-version where we can control the python version manually, and the second on is pyproject.toml which hold all the conditions about the version and etc.

Once the uv init is successful now we need to create a virtual environment, before we used to create a virtual environment using (python -<python version optional> -m venv .venv), but by using uv we can just write uv sync it will create the virtual environment for us.

Once the virtual environment is done we need to install the dbt package which dbt-core, which will give us excess to dbt functionality (uv add dbt-core) and second thing is that dbt does not have it's own compute so, we need to dbt-databricks for that so, we will install dbt-databricks (dbt-databricks)