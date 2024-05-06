SELECT DISTINCT SUBSTRING(period, 1,4) AS year, location, stateDescription, fueltypeid, fuelTypeDescription, 
	SUM([total-consumption]) OVER (PARTITION BY location, fueltypeid) AS [total-annual-consumption], 
	[total-consumption-units], 
	SUM(generation) OVER (PARTITION BY location, fueltypeid) AS [total-annual-generation], 
	[generation-units]
INTO ElecGen_Annual_2023
FROM ElectricityGen_Monthly_2023
WHERE location IN ('AK', 'AL', 'AZ', 'AR', 'CA', 'CO', 'CT', 'DE', 'FL', 'GA', 'HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME', 'MD', 'MA', 'MI', 'MN', 
'MS', 'MO', 'MT', 'NE', 'NV', 'NH', 'NJ', 'NM', 'NY', 'NC', 'ND', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC',
'SD', 'TN', 'TX', 'UT', 'VT', 'VA', 'WA', 'WV', 'WI', 'WY') AND fueltypeid IN ('ALL', 'COW', 'REN', 'NGO', 'NUC', 'PET')
ORDER BY location, [total-annual-generation] DESC

SELECT * FROM ElecGen_Annual_2023 AS a WHERE 
(SELECT COUNT(*) FROM ElecGen_Annual_2023 AS b 
WHERE b.stateDescription = a.stateDescription AND b.[total-annual-generation] >= a.[total-annual-generation]) <= 4 
ORDER BY a.stateDescription DESC, a.[total-annual-generation] DESC
	