-- Databricks notebook source
-- MAGIC %md #### Get current timestamp

-- COMMAND ----------

select current_timestamp()

-- COMMAND ----------

-- MAGIC %md #### Lets check the timezone

-- COMMAND ----------

-- MAGIC %python
-- MAGIC spark.conf.get("spark.sql.session.timeZone")

-- COMMAND ----------

-- MAGIC %md So we see that by default it was UTC, which is the same as Zulu.We can easly change a timezone:

-- COMMAND ----------

-- MAGIC %python
-- MAGIC spark.conf.set("spark.sql.session.timeZone","Europe/Warsaw")

-- COMMAND ----------

-- MAGIC %md And our currect_timestamp will give us different results:

-- COMMAND ----------

select current_timestamp()

-- COMMAND ----------

-- MAGIC %md #### Now lets see UNIX time

-- COMMAND ----------

select unix_timestamp()

-- COMMAND ----------

-- MAGIC %md #### Converting UNIX time to human readable timestamp

-- COMMAND ----------

select cast(unix_timestamp() as timestamp)

-- COMMAND ----------

-- MAGIC %md By default it will convert to timestamp according to zulu. Unless you have set up a timezone, like we have done this above.
