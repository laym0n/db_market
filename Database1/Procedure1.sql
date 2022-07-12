CREATE PROCEDURE [dbo].all_products
AS
	select p.name, c.name from Product p
left join dbo.set_category s
on s.id_product = p.product 
left join category c
on c.category = s.id_category
RETURN 0
