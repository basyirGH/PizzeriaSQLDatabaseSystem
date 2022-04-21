use Pizzeria;

select a.orderNo, a.pizzaNo, a.pizzaName, b.pizzaType, b.pizzaTypePrice, b.pizzaSize, b.pizzaSizePrice, d.toppingName, d.toppingPrice
	from Pizza_Product as a
    inner join Pizza as b on a.pizzaNo = b.pizzaNo
    inner join Pizza_Product_Topping as c on b.pizzaNo = c.pizzaNo
    inner join Topping as d on c.toppingID = d.toppingID
    where a.orderNo = 6004
    order by a.pizzaName asc;
    
select orderNo, sum(b.pizzaTypePrice) + sum(b.pizzaSizePrice) + sum(d.toppingPrice) as totalPrice
	from Pizza_Product as a
    inner join Pizza as b on a.pizzaNo = b.pizzaNo
    inner join Pizza_Product_Topping as c on b.pizzaNo = c.pizzaNo
    inner join Topping as d on c.toppingID = d.toppingID
    where a.orderNo = 6004;

    

