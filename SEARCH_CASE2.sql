use Pizzeria;

select count(pizzaType) as NumberOfCheesePizza
from Pizza
where pizzaType = 'Cheese';