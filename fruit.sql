SELECT year, item_name, area_name, AVG(value) AS price
FROM public.foodprices
WHERE area_name = 'U.S. city average' 
                  AND year BETWEEN '2011' AND '2022'
				  AND item_name in ('Bananas, per lb. (453.6 gm)',                                                                         
									'Broccoli, per lb. (453.6 gm)',                                                                                                                                               
									
									'Grapes, Thompson Seedless, per lb. (453.6 gm)',
									'Lemons, per lb. (453.6 gm)',
									'Lettuce, romaine, per lb. (453.6 gm)',
									'Oranges, Navel, per lb. (453.6 gm)'                                                                  
									'Peaches, per lb. (453.6 gm)'
									'Pears, Anjou, per lb.(453.6 gm)', 
									'Peppers, sweet, per lb. (453.6 gm)',                                                                  
									'Potatoes, white, per lb. (453.6 gm)',                                                                 
									'Strawberries, dry pint, per 12 oz. (340.2 gm)',                                                      
									'Tomatoes, field grown, per lb. (453.6 gm)'                                                           
								   )
				  
GROUP BY year,item_name, area_name				  
ORDER BY item_name ASC