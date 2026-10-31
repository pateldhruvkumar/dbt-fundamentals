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

Main to thing notedown is that we need to install everything into virtual environment. to activate the virtual environment (.venv/Scripts/Activate)

Now to connect the dbt with databricks we need to create a catelog in Databricks. After doing that run step by step commands in CLI

1. dbt init (it will ask to enter the name of the project)
2. Select the database we can go for snowflake or databricks
3. Then, there are multiple things you need to add like Host, HTTP path which you can find in the compute section.
4. Then, you need to create a token in databricks by going on the setting section, then find a developer option, and then create a Access token
5. Follow steps according (name of catelog, schema, no of threads)
6. to check everything is working first go into the folder or project we create using dbt init.
7. Then, run dbt debug.

Modeling using dbt:
1. We create a folder in models called source in that we created a file name "source.yml" because it is best practices when you work in the industry because people can actual see that what is the source of the data and another advantage of doing this that we can reuse or make direct calls in the models itself by using {{ source('schema', 'table_name') }}
2. We create a folder in models called bronze, where we created model like bronze_customer.sql and many more. Where we learned about how to make read the table from the databricks using dbt models.
3. Most important things that I learned was project file (dbt_project.yml) < properties (bronze/properties.yml) < block (this is like inline css written in the model file it self), when you configure something in this it give preceedence according to the mentioned format.

If we want to create a custom schema using dbt we can use macros in the macros folder we created a file name generate_schema.sql. Which tells the dbt to create a schema using a that particular name and how it should be. But also make sure to check the dbt_project.yml file on the other hand.


DBT Tests:
1. We can add test condition into the models run because we need to make sure that the data we push we defined.
2. How to do that is that we create a file in test folder with any name which will our singular test. Where you mentioned the where condition into opposite direction.
3. Then, the next step is that we can create a generic test by creating a generic folder inside the test folder. where you define the whole macro and later on you add that condition into the properties with the name of the generic test you created.