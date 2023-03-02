SELECT DISTINCT year, item_name, area_name, AVG(value) AS price
FROM public.foodprices
WHERE area_name = 'U.S. city average' 
                  AND year BETWEEN '2011' AND '2022'
				  AND item_name in ('Automotive diesel fuel, per gallon/3.785 liters',
								    'Electricity per KWH',                                                                                                                                             
									'Gasoline, unleaded midgrade, per gallon/3.785 liters',                                                
									'Gasoline, unleaded premium, per gallon/3.785 liters',                                                 
									'Gasoline, unleaded regular, per gallon/3.785 liters',
									'Utility (piped) gas per therm'                                                                       
									
									
									                                                     
									)
GROUP BY year,item_name, area_name				  
ORDER BY item_name ASC
