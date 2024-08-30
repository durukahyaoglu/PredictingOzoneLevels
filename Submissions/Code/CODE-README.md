# Group 24 Final Project — Guide to the Code

We split our code into several notebooks which should be ran in the following order:
1. Dataset creation
2. Data cleaning
3. EDA
4. Each of the models in no particular order: LinearRegression, RandomForest, NN, and XGBoost

### Dataset Creation

This code first combines the raw data files for site, meteorlogical, and hourly gas into 3 separate parquet files with the years of interest. It explicitly defines the schema for each of them, checks all the raw source files for the same schema, and saves the results. The parquet files are then joined together via an inner join following the data model diagram to create the singular dataset with also a row count validation. The raw data is not part of our submission, only the final cleaned data is.

### Data Cleaning

This code removes invalid columns (with high proportion of missing values) and then removes the remaining rows
with many missing values. It also removes all rows from sites which have a high percentage of invalid/missing values.

The result of this code is the met_gas_site_cleaned.snappy.parquet file provided in this submission.

### EDA

This has the code which created the plots for our Deliverable 2 presentation and guided our strategy for
choosing the right models and understanding our data.

### LinearRegression, RandomForest, NN, and XGBoost

Each of these notebooks preprocesses, trains, tunes a model on our final cleaned data.
The preprocessing function used in each notebook is the same.
