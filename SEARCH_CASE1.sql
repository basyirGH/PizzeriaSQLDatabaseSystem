use Pizzeria;

select toppingName, toppingPrice
from Topping
where toppingName like 'C%'
order by toppingPrice asc;


