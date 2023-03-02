SELECT DISTINCT year, item_name, area_name, AVG(value) AS price
FROM public.foodprices
WHERE area_name = 'U.S. city average' 
                  AND year BETWEEN '2011' AND '2022'
				  AND item_name in (                                             
									'Bacon, sliced, per lb. (453.6 gm)',                                                                   
									'Bologna, all beef or mixed, per lb. (453.6 gm)',                         
									'Chicken breast, boneless, per lb. (453.6 gm)',                                                        
									'Chicken legs, bone-in, per lb. (453.6 gm)',                                                           
									'Chicken, fresh, whole, per lb. (453.6 gm)',                                                           
									'Chops, boneless, per lb. (453.6 gm)',
									'Chops, center cut, bone-in, per lb. (453.6 gm)',
									'Ground beef, 100% beef, per lb. (453.6 gm)',
									'Ham, boneless, excluding canned, per lb. (453.6 gm)',
									'Round roast, USDA Choice, boneless, per lb. (453.6 gm)',                                              
									'Steak, round, USDA Choice, boneless, per lb. (453.6 gm)'                                             
									'Steak, sirloin, graded and ungraded, excluding USDA Prime and Choice, per lb. (453.6 gm)'            
									'Steak, sirloin, USDA Choice, boneless, per lb. (453.6 gm)',
									'Turkey, frozen, whole, per lb. (453.6 gm)'                                                           
									)
GROUP BY year,item_name, area_name				  
ORDER BY item_name ASC
