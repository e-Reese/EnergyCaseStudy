# Energy Sales and Production Dashboard
This repository is an archive of the code and data used for the Tableau dashboard found [here.](https://public.tableau.com/views/Electricity-SalesAndGeneration/Generation?:language=en-US&:sid=&:display_count=n&:origin=viz_share_link)
The dashboard shows U.S. elecectricity sales per sector, generation by fuel source, and revenue data, for each state. 


## Data
All data was pulled from the U.S. EIA (Energy Information Administration). 
[EIA API](https://www.eia.gov/opendata/browser/)


Specific HTTP Requests used:
[HTTP Request 1](https://api.eia.gov/v2/electricity/electric-power-operational-data/data/?api_key=XXXXXXXX&frequency=monthly&data[0]=consumption-for-eg&data[1]=consumption-for-eg-btu&data[2]=consumption-uto&data[3]=consumption-uto-btu&data[4]=cost&data[5]=cost-per-btu&data[6]=generation&data[7]=heat-content&data[8]=receipts&data[9]=receipts-btu&data[10]=stocks&data[11]=total-consumption&data[12]=total-consumption-btu&facets[fueltypeid][]=ALL&facets[fueltypeid][]=AOR&facets[fueltypeid][]=COW&facets[fueltypeid][]=HYC&facets[fueltypeid][]=NGO&facets[fueltypeid][]=NUC&facets[fueltypeid][]=PET&facets[fueltypeid][]=REN&facets[location][]=AK&facets[location][]=AL&facets[location][]=AR&facets[location][]=AZ&facets[location][]=CA&facets[location][]=CO&facets[location][]=CT&facets[location][]=DC&facets[location][]=DE&facets[location][]=FL&facets[location][]=GA&facets[location][]=HI&facets[location][]=IA&facets[location][]=ID&facets[location][]=IL&facets[location][]=IN&facets[location][]=KS&facets[location][]=KY&facets[location][]=LA&facets[location][]=MA&facets[location][]=MD&facets[location][]=ME&facets[location][]=MI&facets[location][]=MN&facets[location][]=MO&facets[location][]=MS&facets[location][]=MT&facets[location][]=NC&facets[location][]=ND&facets[location][]=NE&facets[location][]=NH&facets[location][]=NJ&facets[location][]=NM&facets[location][]=NV&facets[location][]=NY&facets[location][]=OH&facets[location][]=OK&facets[location][]=OR&facets[location][]=PA&facets[location][]=RI&facets[location][]=SC&facets[location][]=SD&facets[location][]=TN&facets[location][]=TX&facets[location][]=US&facets[location][]=UT&facets[location][]=VA&facets[location][]=VT&facets[location][]=WA&facets[location][]=WI&facets[location][]=WV&facets[location][]=WY&facets[sectorid][]=99&start=2023-01&end=2023-12&sort[0][column]=location&sort[0][direction]=asc&sort[1][column]=period&sort[1][direction]=asc&offset=0&length=5000)

[HTTP Request 2](https://api.eia.gov/v2/electricity/retail-sales/data/?api_key=XXXXXXXX&frequency=annual&data[0]=customers&data[1]=price&data[2]=revenue&data[3]=sales&facets[sectorid][]=ALL&facets[sectorid][]=COM&facets[sectorid][]=IND&facets[sectorid][]=OTH&facets[sectorid][]=RES&start=2023&end=2023&sort[0][column]=stateid&sort[0][direction]=asc&offset=0&length=5000)

Replace the eight X's (following 'api_key=') with your own api key. 
Further instructions on the use of the EIA's API can be found [here](https://www.eia.gov/opendata/documentation.php)


## Suggested Citation
Reese, Ethan, 2024. "Correlations With Productivity" (https://github.com/e-Reese/)
