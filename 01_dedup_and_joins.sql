SELECT
    partner_id,
    COUNT(*) AS occurrences
FROM partners_import
GROUP BY partner_id
HAVING COUNT(*) > 1;
CREATE TABLE partners AS
SELECT
    partner_id,
    city,
    primary_category,
    rating,
    active,
    days_since_onboarding
FROM partners_import
GROUP BY
    partner_id,
    city,
    primary_category,
    rating,
    active,
    days_since_onboarding;
  
    SELECT
    b.booking_id,
    b.partner_id
FROM bookings b
INNER JOIN partners p
    ON b.partner_id = p.partner_id;

    SELECT
    c.category,
    b.booking_id
FROM categories c
LEFT JOIN bookings b
    ON c.category = b.category
WHERE b.booking_id IS NULL;

SELECT
    p.partner_id,
    b.booking_id
FROM partners p
LEFT JOIN bookings b
    ON p.partner_id = b.partner_id
WHERE b.booking_id IS NULL;

SELECT
    c.category,
    COUNT(*) AS joined_rows,
    COUNT(b.booking_id) AS booking_count
FROM categories c
LEFT JOIN bookings b
    ON c.category = b.category
GROUP BY c.category;

-- COUNT(*) counts all rows after the LEFT JOIN.
-- Categories with no bookings still contribute one row.
-- COUNT(b.booking_id) counts only actual matching bookings.
-- Pest Control has zero bookings.
