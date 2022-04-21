use Pizzeria;

select b.orderNo, a.customerNo, a.address, a.firstName, a.phone
from Customer as a 
inner join Orders as b on a.customerNo = b.customerNo
where b.orderNo in
	(select orderNo
    from Orders
    where orderTime < '17:00:00'
    );