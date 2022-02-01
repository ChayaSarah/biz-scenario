use BakeryDB
go
delete Orders
go
insert Orders(CustomerName, Branch, DateOrdered, TypeOfBase, Item, ToppingFlavor, Picture, CustomerSpecifications, Occasion, Amount)
--Name, Branch, Date, Type of base, Item, Topping, Picture?, GF, Specifics, Occasion, Amount, (Price per, Order price)
select 'Chaim Green', 'Lakewood', '01/04/2022', 'Strawberry Shortcake', 'Cake', '', 0, 'Please make sure they both look the same for a kiddush', 'Baby', 2
union select 'Rivky Shapiro', 'Lakewood', '07/22/2021', 'Chocolate', 'Cake', 'Caramel', 0, 'Write Happy birthday on cake', 'Birthday', 1
union select 'Leah Gross', 'Brooklyn', '06/11/2021', 'Chocolate', 'Cookie', 'Royal Icing', 1, 'Graduation cap shape of picture I emailed', 'Graduation', 70
union select 'Baruch Goldberg', 'Brooklyn', '09/12/2021', 'Chocolate', 'Cookie', 'Royal Icing', 0, 'Shape of a mask and write thank you for keeping everyone safe and company logo', 'Company logo', 500
union select 'Binyamin Stein', 'Lakewood', '02/15/2021', 'Vanilla', 'Cake', 'Chocolate', 1, 'Write Happy 85th birthday on bottom of the attached photo', 'Birthday', 3
union select 'Batsheva Golden', 'Lakewood', '08/14/2021', 'Chocolate Peanut Butter', 'Cake', 'Peanut Butter', 1, 'Write Shloimy and the number 3 on pic', 'Upsherin', 1
union select 'Rena Stern', 'Brooklyn', '10/11/2021', 'Chocolate', 'Cookie', 'Fondant', 0, 'Pink background with glitter and shape of balloon with word Sori', 'Bas mitzvah', 75
union select 'Layala Katz', 'Lakewood', '09/05/2021', 'Vanilla', 'Cupcake', 'Strawberry', 0, 'Make it look nice!', 'Birthday', 28
union select 'Sara Leah Levy', 'Brooklyn', '05/18/2021', 'Vanilla', 'Cupcake', 'Coconut', 0, '', 'Engagement', 100
union select 'Devorah Friedman', 'Brooklyn', '07/04/2021', 'Strawberry shortcake', 'Cake', '', 0, '', 'Wedding', 15
union select 'Kaufman', 'Lakewood', '11/09/2021', 'Chocolate peanut butter', 'Cake', 'Chocolate', 0, '', 'Bar mitzvah', 3
union select 'Chana Cohen', 'Lakewood', '07/04/2021', 'Banana', 'Cake', 'Chocolate', 1, '', 'Anniversary', 1
union select 'Ahuva Licht', 'Lakewood', '06/22/2021', 'Chocolate', 'Cookie', 'Royal Icing', 0, 'Write Chaim and Devorah', 'Engagement', 75
union select 'Tziporah Markowitz', 'Lakewood', '03/16/2021', 'Strawberry shortcake', 'Cake', '', 0, '', 'Baby', 3
union select 'David Fried', 'Lakewood', '10/01/2021', 'Chocolate peanut butter', 'Cake', 'Chocolate', 0, '', 'Bar mitzvah', 2
union select 'Moshe Abrams', 'Brooklyn', '08/23/2021', 'Vanilla', 'Cupcake', 'Peanut Butter', 0, 'Write 3 on it', 'Upsherin', 150
union select 'Rachel Bernstein', 'Lakewood', '02/28/2021', 'Chocolate', 'Cookie', 'Fondant', 1, 'Attached photo of daughter', 'Bas mitzvah', 80
union select 'Faiga Berg', 'Brooklyn', '10/12/2021', 'Chocolate', 'Cupcake', 'Chocolate', 0, 'Add a pecan on each one', 'Event', 350
union select 'Dena Bergman', 'Brooklyn', '06/08/2021', 'Chocolate', 'Cookie', 'Royal Icing', 0, 'Write Shimon and Leah', 'Engagement', 75
union select 'Asher Yechiel Eisen', 'Brooklyn', '12/31/2021', 'Chocolate', 'Cookie', 'Royal Icing', 0, 'In shape of tefillin', 'Bar mitzvah', 175
union select 'Mendy Fischer', 'Lakewood', '07/04/2021', 'Banana', 'Cupcake', 'Chocolate', 0, 'For bris', 'Baby', 100
union select 'Chaya Kaplan', 'Lakewood', '01/01/2021', 'Chocolate', 'Cupcake', 'Coconut', 0, 'Make it taste great please', 'Birthday', 100
union select 'Sarala Schwartz', 'Brooklyn', '06/09/2021', 'Chocolate', 'Cupcake', 'Fondant', 0, '', 'Baby', 50
union select 'Sarah Braunstein', 'Brooklyn', '10/24/2021', 'Chocolate', 'Cookie', 'Royal Icing', 1, 'See attached picture of my sukkah', 'Family party', 110

select * from Orders
