/*
I recently started a home based baking business, together with my cousin. She works from her home in Lakewood and I work in Brooklyn.
I sell cakes, cookies, and cupcakes for various events.
I want to keep a database of all orders.
I need to know whether they order cookies, cake/s, or cupcakes.
I need to know the base of cookie/cake, what topping to decorate it with, whether or not it is gluten free, and space to put in their custom order specifications.
I also want to know if they want a photo on the cake/cookie.
Please calculates the price of order when entered.
I need the name of the Customer, branch they ordered from, date of order, amount they bought, how much they cost is per item and how much the whole order was.
I also want to keep track of the occasion they bought it for.
These are the only options of cakes and cupcakes we make (so far):
Chocolate 
Vanilla 
Coconut 
Chocolate Peanut Butter 
Banana
Strawberry shortcake
Chocolate and Vanilla and Banana come in a gluten free option.
All cookies have same 6 options of flavors and can be gluten free.
Toppings:
Royal icing or fondant or frosting - chocolate, caramel, strawberry, coconut, peanut butter
All cakes are $50, gluten free is extra $20, strawberry shortcake is extra $5
All cupcakes are $3, gluten free is extra $1
All cookies are $3.50, gluten free is extra $1
Picture adds on $8 for a cake and $1.50 for a cookie. We don't offer pictures on cupcakes.
*/
--Name, Branch, Date, Type of base, Item, Topping, Picture?, Specifics, Occasion, Amount, (Price per, Order price)
--AS: GLUTEN FREE WAS TAKEN OUT OF THE SPEC
use BakeryDB
go
drop table if exists Orders 
go
create table dbo.Orders(
    OrdersId int not null identity primary key,
    CustomerName varchar(40) not null constraint ck_Orders_CustomerName_cannot_be_blank check(CustomerName <> ''),
    Branch varchar(10) not null constraint ck_Orders_Branch_must_be_Brooklyn_or_Lakewood check(Branch in ('Brooklyn', 'Lakewood')),
    DateOrdered date not null constraint ck_Orders_DateOrdered_must_be_after_January_1 check(DateOrdered >= '01/01/2021'),
    TypeOfBase varchar(50) not null constraint ck_Orders_TypeOfBase_must_be_either_Chocolate_Vanilla_Coconut_ChocolatePeanutButter_Banana_StrawberryShortcake check(TypeOfBase in ('Chocolate', 'Vanilla', 'Coconut', 'Chocolate Peanut Butter', 'Banana', 'Strawberry shortcake')),
    Item varchar(15) not null constraint ck_Orders_Item_must_be_cookies_or_cakes_or_cupcake check(Item in ('Cookie', 'Cake', 'Cupcake')),
    ToppingFlavor varchar(25) not null constraint ck_Orders_ToppingFlavor_must_be_either_RoyalIcing_Fondant_Chocolate_Caramel_Strawberry_Coconut_PeanutButter_or_blank check(ToppingFlavor in('Royal Icing', 'Fondant', 'Chocolate', 'Caramel', 'Strawberry', 'Coconut', 'Peanut Butter', '')),
    Picture bit not null,
    CustomerSpecifications varchar(100) not null,
    Occasion varchar(50) not null constraint ck_orders_occasion_cannot_be_blank check(Occasion <> ''),
    Price as 
        case when Item = 'Cake' and Picture = 0 then 50.00
             when Item = 'Cake'  and Picture = 0 and TypeOfBase = 'Strawberry Shortcake' then 55.00
             when Item = 'Cupcake' and Picture = 0 then 3.00
             when Item = 'Cookie' and Picture = 0 then 3.50
             when Item = 'Cake' and Picture = 1 then 58.00
             when Item = 'Cookie' and Picture = 1 then 5.00
             when Item = 'Cake'  and Picture = 1 and TypeOfBase = 'Strawberry Shortcake' then 63.00
        end,
    Amount int not null constraint ck_Orders_Amount_must_be_greater_than_0 check(Amount > 0),
    OrderPrice as 
        (case when Item = 'Cake' and Picture = 0 then 50.00
             when Item = 'Cake'  and Picture = 0 and TypeOfBase = 'Strawberry Shortcake' then 55.00
             when Item = 'Cupcake' and Picture = 0 then 3.00
             when Item = 'Cookie' and Picture = 0 then 3.50
             when Item = 'Cake' and Picture = 1 then 58.00
             when Item = 'Cookie' and Picture = 1 then 5.00
             when Item = 'Cake'  and Picture = 1 and TypeOfBase = 'Strawberry Shortcake' then 63.00
        end) * Amount
)
go