CREATE UNIQUE INDEX idx_person_discounts_unique ON person_discounts(person_id, pizzeria_id);

set enable_seqscan = off;
EXPLAIN ANALYZE
SELECT *
FROM person_discounts
WHERE person_id = 2 and pizzeria_id = 6;