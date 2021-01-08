/*
Using the following tables, return the pokemon_name, modifiedStrength and element of the Pokemon whose strength, 
after taking these changes into account, is greater than or equal to 40, ordered from strongest to weakest.

pokemon schema

    id
    pokemon_name
    element_id
    str

multipliers schema

    id
    element
    multiplier
*/
SELECT
  p.pokemon_name,
  p.str * m.multiplier AS modifiedStrength,
  m.element
FROM pokemon AS p
JOIN multipliers AS m ON m.id = p.element_id
WHERE (p.str * m.multiplier) >= 40
ORDER BY 2 DESC;
