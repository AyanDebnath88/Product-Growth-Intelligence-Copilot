import sqlite3
conn = sqlite3.connect('data\database\olist.db')
cursor = conn.cursor()
cursor.execute("""SELECT name FROM sqlite_master WHERE type='table'""")
tables = cursor.fetchall()
print(tables)