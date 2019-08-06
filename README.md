
# Install Postgres server

Install PostgreSQL and some other required packages with the apt command:

```sudo apt-get -y install postgresql postgresql-contrib libpq```

When the installation is done, login to the postgres user and access the postgresql shell.

```su - postgres```
```psql```

Give the postgres user a new password with command below:

```\password postgres```
```Enter new password:```

# Another way to login to postgres (If above does not work)
```sudo -u postgres psql```

# Create a user for postgres
Next, create a new role named 'rails-dev' for the rails development with the command below:
```create role rails_dev with createdb login password 'aqwe123';```

Set a new password for the user and check that the user has been created.

Now check the new role and you will see new role has been created:
```\du```



# Start rails server
* ```bundle install```
* ``` rails db:setup```
* ``` rails db:migrate```
* ```rails s```
