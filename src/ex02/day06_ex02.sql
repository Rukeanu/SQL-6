SELECT person.name,
menu.pizza_name, menu.price,
(menu.price - (menu.price * person_discounts.discount * 0.01)) AS discount_price,
pizzeria.name AS pizzeria_name
FROM person_order
INNER JOIN person ON person.id = person_order.person_id
INNER JOIN menu ON menu.id = person_order.menu_id
INNER JOIN person_discounts ON person.id = person_discounts.person_id AND person_discounts.pizzeria_id = menu.pizzeria_id
INNER JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
ORDER BY 1, 2;