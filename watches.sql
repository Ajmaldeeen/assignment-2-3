create table watches1(slno int,products varchar(20),price int);
insert into watches1(slno,products,price)values(1,'fastrack',20000); 
insert into watches1(slno,products,price)values(2,'sonata',40000);  
insert into watches1(slno,products,price)values(3,'titan',12000); 
insert into watches1(slno,products,price)values(4,'realme',25000); 
insert into watches1(slno,products,price)values(5,'oneplus',50000); 
insert into watches1(slno,products,price)values(6,'apple',60000); 
insert into watches1(slno,products,price)values(7,'rolex',80000); 
insert into watches1(slno,products,price)values(8,'casio',40000); 
insert into watches1(slno,products,price)values(9,'fossil',24000); 
insert into watches1(slno,products,price)values(10,'timex',44000);  

select *from watches1

#min and max 
  
select max(slno) 
from watches1
where price<=40000; 
  
select min(slno) 
from watches1 
where price<=40000; 

#avg 
select avg(price)from watches1; 
  
#count 
select count (price)from watches1; 
  
#sum 
select sum(price)from watches1; 
  
#and operation 
select *from watches1 where products='rolex'and price=80000;
 
#or operation 
select *from watches1 where products='Oneplus'OR price=50000; 
  
#ADDING COLUMN 
ALTER TABLE watches1 add experience float; 

#drop column 
alter table watches1 drop column experience;

#create another table 
  
create table watches2(slno int,products varchar(20),price int); 
insert into watches2(slno,products,price)values(1,'boat',20000); 
insert into watches2(slno,products,price)values(2,'armani',40000); 
insert into watches2(slno,products,price)values(3,'diesel',5000); 
insert into watches2(slno,products,price)values(4,'louisdevin',9000); 
insert into watches2(slno,products,price)values(5,'amazfit',50000); 
insert into watches2(slno,products,price)values(6,'maxima',60000); 
insert into watches2(slno,products,price)values(7,'roadster',8000); 
insert into watches2(slno,products,price)values(8,'raga',4000); 
insert into watches2(slno,products,price)values(9,'tommyhilfigure',20000); 
insert into watches2(slno,products,price)values(10,'citizen',10000); 
  
select *from watches2 

#inner join 
  
select watches1.products, watches1.price,watches2.products,watches2.price
from watches1
inner join watches2
on watches1.price =watches2.price; 
  
  
#full join 
  
select watches1.products, watches1.price,watches2.products,watches2.price 
from watches1
full join watches2 
on watches1.price = watches2.price; 
  
  
#left join 
  
select watches1.products,watches1.price,watches2.products,watches2.price 
from watches1 
left join watches2
on watches1.price = watches2.price;
  
#right join 
  
select watches1.products, watches1.price,watches2.products,watches2.price 
from watches1
right join watches2
on watches1.price = watches2.price;   

#left outer join 
  
select watches1.products, watches1.price,watches2.products,watches2.price 
from watches1
left outer join watches2  
on watches1.price = watches2.price;  

#right outer join 
  
select watches1.products, watches1.price,watches2.products,watches2.price 
from watches1
right outer join watches2
on watches1.price = watches2.price;  
  
#full outer join 
select watches1.products, watches1.price,watches2.products,watches2.price 
from watches1
full outer join watches2 
on watches1.price = watches2.price;
  
#desc 
select *from watches1 order by price desc; 
  
#asc 
select *from watches1 order by price asc;