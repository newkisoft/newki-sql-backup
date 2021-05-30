date=$(date '+%Y-%m-%d')
name="inventory-$date.bak"
websiteName="website-$date.bak"
PGPASSWORD="databasepassword" pg_dump -h yourdatabaseurl -U sa  stock > "$name"
PGPASSWORD="databasepassword" pg_dump -h yourdatabaseurl -U sa  newkihub > "$websiteName"
python3 upload.py
