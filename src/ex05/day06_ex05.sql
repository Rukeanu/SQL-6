COMMENT ON TABLE person_discounts IS '% for persons';
COMMENT ON COLUMN person_discounts.id IS 'id as primary key';
COMMENT ON COLUMN person_discounts.person_id IS 'id of person';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'id of pizzeria';
COMMENT ON COLUMN person_discounts.discount IS 'some discount';