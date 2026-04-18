# License audit (demo data)

users = [
    {"name": "John", "last_login_days": 5},
    {"name": "Sarah", "last_login_days": 45},
    {"name": "Mike", "last_login_days": 60}
]

inactive = [u for u in users if u["last_login_days"] > 30]

print("Inactive users:")
for user in inactive:
    print(f"{user['name']} - reclaim license")