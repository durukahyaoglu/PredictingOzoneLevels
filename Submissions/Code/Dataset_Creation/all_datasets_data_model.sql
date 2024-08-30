// Use DBML to define your database structure
// Docs: https://dbml.dbdiagram.io/docs

Table sites {
  SITE_ID VARCHAR [primary key]
}

Table hourly_gas {
  SITE_ID VARCHAR [primary key]
  DATE_TIME DATE [primary key]
  PARAMETER VARCHAR [primary key]
}

Table metdata {
  SITE_ID VARCHAR [primary key]
  DATE_TIME DATE [primary key]
  OZONE NUMBER(16,4) [note: 'Label for project']
}


Ref: sites.SITE_ID < hourly_gas.SITE_ID
Ref: sites.SITE_ID < metdata.SITE_ID
Ref: hourly_gas.(SITE_ID, DATE_TIME) <> metdata.(SITE_ID, DATE_TIME)