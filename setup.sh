su -c "psql -c \"CREATE ROLE sa LOGIN SUPERUSER PASSWORD 'yourpassword';\"" postgres
echo "listen_addresses = '*'" >> /etc/postgresql/12/main/postgresql.conf
echo "host    all             all             0.0.0.0/0            md5" >> /etc/postgresql/12/main/pg_hba.conf
service postgresql restart
#python3 download.py
su -c "psql -c \"CREATE DATABASE stock\"" postgres
su -c "psql -c \"CREATE DATABASE newkihub\"" postgres

su -c "psql -d stock < inventory-2021-05-16.bak" postgres
su -c "psql -d newkihub < website-2021-05-16.bak" postgres
