SELECT period, stateid, stateDescription, sectorid, sectorName, customers, price, revenue, sales, [customers-units], [price-units], [revenue-units], [sales-units] -- Select all data, why not.
FROM ElectricitySales_Monthly_2023
WHERE sectorid != 'OTH' AND stateid IN ('AK', 'AL', 'AZ', 'AR', 'CA', 'CO', 'CT', 'DE', 'FL', 'GA', 'HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME', 'MD', 'MA', 'MI', 'MN',
'MS', 'MO', 'MT', 'NE', 'NV', 'NH', 'NJ', 'NM', 'NY', 'NC', 'ND', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC',
'SD', 'TN', 'TX', 'UT', 'VT', 'VA', 'WA', 'WV', 'WI', 'WY') -- Only get the states we want because the data was exported with regions and D.C. as well.
