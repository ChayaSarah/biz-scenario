/*
1) Sum of how many of each type of cake/cupcake/cookie is sold per branch 
        Include the type of product and base but not the frosting or topping , and sum of amount sold all together
2) How many orders per season, event, and branch (Ex: Summer, Upsherin, Lakewood, 6)
    Summer: July and August
    Yom Tov time: September and October
    Winter: November - April
    Spring: May and June
3) How many gluten free orders per month
4) How much money came in each month per branch
5) How many orders came in each month per branch
*/

--1)
select o.Branch, o.item, ItemsSoldPerBranch = count(*)
from orders o 
group by o.Branch, o.item

--2)
select Season = 'Summer', o.branch, o.Occasion,  CountOfOrdersPerBranchAndOccasion = count(*)
from orders o
where month(DateOrdered) between 5 and 10
group by o.Branch, o.Occasion
union select Season = 'Summer', o.branch, o.Occasion,  CountOfOrdersPerBranchAndOccasion = count(*)
from orders o
where month(DateOrdered) in(1,2,3,4,11,12)
group by o.Branch, o.Occasion

--3)
select o.branch, Month = month(o.dateordered), IncomePerMonth = sum(o.OrderPrice)
from orders o 
group by o.branch, month(o.dateordered)

--4)
select o.branch, Month = month(o.dateordered), NumberOfOrdersPerMonth = count(*)
from orders o 
group by o.branch, month(o.dateordered)
