SELECT DISTINCT item_name, area_name
FROM public.foodprices
WHERE year BETWEEN '2011' AND '2022' 
ORDER BY item_name ASC


SELECT year, item_name, area_name, AVG(value) AS price
FROM public.foodprices
WHERE area_name = 'U.S. city average' 
                  AND year BETWEEN '2011' AND '2022'
				  AND item_name in ('American processed cheese, per lb. (453.6 gm)',                                                 
									'Beans, dried, any type, all sizes, per lb. (453.6 gm)', 
									'Bread, white, pan, per lb. (453.6 gm)',                                                               
									'Bread, whole wheat, pan, per lb. (453.6 gm)',                                                         
									'Butter, salted, gade AA, stick, per lb. (453.6 gm)'    
									'Butter, stick, per lb. (453.6 gm)',                                                                   
									'Cheddar cheese, natural, per lb. (453.6 gm)', 
									'Coffee, 100%, ground roast, all sizes, per lb. (453.6 gm)',                                           
									'Eggs, grade A, large, per doz.',                                                                      
									'Flour, white, all purpose, per lb. (453.6 gm)',                                                       
									'Milk, fresh, whole, fortified, per gal. (3.8 lit)',                                                                                
								    'Potatoes, white, per lb. (453.6 gm)',                                                                 
								    'Rice, white, long grain, uncooked, per lb. (453.6 gm)',                                               
								    'Spaghetti and macaroni, per lb. (453.6 gm)'                                                          
								                                                                           
								   )
				  
GROUP BY year,item_name, area_name				  
ORDER BY item_name ASC

