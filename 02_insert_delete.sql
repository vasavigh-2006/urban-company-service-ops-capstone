-- Remove the 3 test bookings
DELETE FROM bookings
WHERE is_test = 1;

-- Insert the 3 new bookings using the actual 9-column schema
INSERT INTO bookings VALUES
('B9001', 'P009', 'Mumbai', 'Deep Home Cleaning',
 '2026-03-31', 3200, 0, 0, 0),

('B9002', 'P041', 'Chennai', 'Plumbing',
 '2026-03-31', 640, 0, 0, 0),

('B9003', 'P035', 'Hyderabad', 'Electrical Repair',
 '2026-03-31', 980, 0, 0, 0);

 -- Find partners whose primary category starts with Salon
-- Find partners whose primary category starts with Salon
SELECT
    partner_id,
    primary_category
FROM partners
WHERE primary_category LIKE 'Salon%';

-- Final city and category summary for Parts B and C
SELECT
    city,
    category,
    COUNT(*) AS bookings_count,
    SUM(amount_inr) AS revenue_inr,
    SUM(sla_breach_flag) AS sla_breaches
FROM bookings
GROUP BY city, category
ORDER BY city, category;
