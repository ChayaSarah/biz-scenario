/*
Spec:
Order
    OrderId pk 
    CustomerName varchar(40)
    Branch varchar(10) Brooklyn and lakewood
    DateOrdered date earliest order is January 1, 2021
    TypeOfBase varchar(35) Cake/cupcakes: chocolate, vanilla, red velvet, coconut, chocolate peanut butter
                        Banana cake, Lakewood
                        Strawberry shortcake - only a cake.
                        Cookies: sugar cookies
    Item varchar(20) cookies, cakes or cupcake
    ToppingFlavor varchar(25). chocolate, caramel, strawberry, coconut, peanut butter
    ToppingType varchar(15) computed. cookies: royal icing or fondant.cakes/cupcakes: fondant or frosting
    Picture bit
    GlutenFree bit computed. vanilla, chocolate, and banana.
    CustomOrderSpecifications varchar(50)
    Occasion varchar(25)
    ItemAmount int cookies: min 24 and max 500. cupcakes: min 12 and max 500.
    PricePerItem decimal (5,2)
    OrderPrice decimal (5,2)
























*/