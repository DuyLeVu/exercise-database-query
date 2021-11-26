use quanlybanhang;
delete from customer;
delete from orders;
delete from product;
delete from orderdetail;
insert into customer values (1,'Minh Quan',10),
                            (2,'Ngoc Oanh',20),
                            (3,'Hong Ha',50);
insert into orders values (1,1,'2006-03-21',Null),
                          (2,2,'2006-03-23',Null),
                          (3,1,'2006-03-16',Null);
insert into product values (1,'May Giat',3),
                           (2,'Tu Lanh',5),
                           (3,'Dieu Hoa',7),
                           (4,'Quat',1),
                           (5,'Bep Dien',2);
insert into orderdetail values (1,1,3),
                               (1,3,7),
                               (1,4,2),
                               (2,1,1),
                               (3,1,8),
                               (2,5,4),
                               (2,3,3);
# Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select oID, oDate, oTotalPrice from orders;
# Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select customer.cID , cName , p.pname from
    customer join orders on customer.cID = orders.cID
    join orderdetail o on orders.oID = o.oID
    join product p on p.pID = o.pID;
# Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select customer.cID, cName from
    customer
where customer.cID not in (select orders.cID from orders);
# Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn
# (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
# Giá bán của từng loại được tính = odQTY*pPrice)
select orders.oID, orders.oDate, sum(odQTY * p.pPrice) as 'Gia ban tung hoa don'
from orders join orderdetail o on orders.oID = o.oID
join product p on o.pID = p.pID
group by orders.oID;
