
sample_bookings = [
    {"booking_id": "B0005", "category": "AC Repair & Service", "amount_inr": 1316},
    {"booking_id": "B0019", "category": "AC Repair & Service", "amount_inr": 538},
    {"booking_id": "B0027", "category": "AC Repair & Service", "amount_inr": 1016},
    {"booking_id": "B0055", "category": "AC Repair & Service", "amount_inr": 1505},
    {"booking_id": "B0001", "category": "Plumbing", "amount_inr": 1369},
    {"booking_id": "B0003", "category": "Plumbing", "amount_inr": 772},
    {"booking_id": "B0004", "category": "Plumbing", "amount_inr": 1133},
    {"booking_id": "B0006", "category": "Plumbing", "amount_inr": 805},
    {"booking_id": "B0018", "category": "Salon for Men", "amount_inr": 1414},
    {"booking_id": "B0024", "category": "Salon for Men", "amount_inr": 1176},
    {"booking_id": "B0029", "category": "Salon for Men", "amount_inr": 858},
    {"booking_id": "B0032", "category": "Salon for Men", "amount_inr": 638},
]

category_totals = {}

for booking in sample_bookings:
    category = booking["category"]
    amount = booking["amount_inr"]

    if category not in category_totals:
        category_totals[category] = {
            "count": 0,
            "total": 0
        }

    category_totals[category]["count"] += 1
    category_totals[category]["total"] += amount

for category, details in category_totals.items():
    print(
        category,
        "Count:", details["count"],
        "Total:", details["total"]
    )
    
import sqlite3

conn = sqlite3.connect("urban_service.db")
cursor = conn.cursor()

query = """
SELECT category, COUNT(*), SUM(amount_inr)
FROM bookings
WHERE booking_id IN (
    'B0005', 'B0019', 'B0027', 'B0055',
    'B0001', 'B0003', 'B0004', 'B0006',
    'B0018', 'B0024', 'B0029', 'B0032'
)
GROUP BY category
"""

results = cursor.execute(query).fetchall()

print("\nSQL verification:")
for row in results:
    print(row)

conn.close()