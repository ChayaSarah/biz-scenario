use BakeryDB
go
drop table if exists Orders 
go
create table dbo.Orders(
    OrdersId int primary key identity,
    CustomerName varchar(40) not null constraint ck_orders_Customer_Name_cannot_be_blank check(CustomerName <> ''),
    Branch varchar(10) not null constraint ck_orders_Branch_must_be_Brooklyn_or_Lakewood check(Branch in ('Brooklyn', 'Lakewood')),
    DateOrdered date not null constraint ck_orders_Date_Ordered_must_be_after_January_1 check(DateOrdered >= '01/01/2021'),
    TypeOfBase varchar(50) not null constraint ck_orders_Type_of_Base_should_be_ check(TypeofBase = 'sugar cookies' or TypeofBase in ('chocolate', 'vanilla', 'red velvet', 'coconut', 'chocolate peanut butter')),
    Item varchar(15) not null constraint ck_orders_Item_must_be_cookies_or_cakes_or_cupcake check(Item in ('cookies', 'cakes', 'cupcakes')),
    ToppingFlavor varchar(25) not null constraint ck_orders_Topping_flavor_must_be_one_of_the_following_chocolate_caramel_strawberry_coconut_or_peanut_butter check(ToppingFlavor in('chocolate', 'caramel', 'strawberry', 'coconut', 'peanut butter')),
    Picture bit not null,
    CustomOrderSpecifications varchar(50) not null constraint ck_orders_custom_order_specifications_cannot_be_blank check(CustomOrderSpecifications <> ''),
    GlutenFree as 
        case when ToppingFlavor in('Banana', 'chocolate', 'vanilla') then 1
        else 0
    end,
    
)