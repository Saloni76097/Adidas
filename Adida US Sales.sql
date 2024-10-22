-- 1)TOTAL AMOUNT OF SALES?
select sum(Total_Sales) as Total
from adidassales;

-- 2) TOTAL UNITS SOLD
select sum(Units_Sold) as Total
from adidassales;

-- 3) TOTAL PROFITS
select sum(Operating_Profit) TOTAL_PROFITS
from adidassales;

-- 4) CITY WISE SALES
select City as CITY_NAMES, sum(Total_Sales) as SALES
from adidassales
group by City
order by CITY_NAMES;

-- 5) CITY WISE PROFIT
select City as CITY_NAMES, sum(Operating_Profit) as PROFIT
from adidassales
group by City
order by CITY_NAMES;

-- 6) CITY WISE UNITS SOLD
select City as CITY_NAMES, sum(Units_Sold) as TOTAL_UNITS
from adidassales
group by City
order by CITY_NAMES;

-- 7) STATE-WISE UNITS SOLD
select State as STATE_NAMES, sum(Units_Sold) as TOTAL_UNITS
from adidassales
group by State
order by STATE_NAMES;

-- 8) STATE-WISE PROFITS
select State as STATE_NAMES, sum(Operating_Profit) as PROFITS
from adidassales
group by State
order by STATE_NAMES;

-- 9) STATE-WISE SALES
select State as STATE_NAMES, sum(Total_Sales) as SALES
from adidassales
group by State
order by STATE_NAMES;

-- 10) REGION-WISE SALES
select Region as REGION_NAMES, sum(Total_Sales) as SALES
from adidassales
group by Region
order by REGION_NAMES;

-- 11) REGION-WISE PROFITS
select Region as REGION_NAMES, sum(Operating_Profit) as PROFITS
from adidassales
group by Region
order by REGION_NAMES;

-- 12) REGION-WISE UNITS SOLD
select Region as REGION_NAMES, sum(Units_Sold) as UNITS_SOLD
from adidassales
group by Region
order by REGION_NAMES;

-- 13) TOP-5 City IN Units Sold
select City as City_Names, sum(Units_Sold) as UNITS
from adidassales
group by City
order by UNITS DESC
limit 5;

-- 14) TOP-5 City IN Sales
select City as City_Names, sum(Total_Sales) as SALES
from adidassales
group by City
order by SALES DESC
limit 5;

-- 15) TOP-5 City IN Profits
select City as City_Names, sum(Operating_Profit) as PROFITS
from adidassales
group by City
order by PROFITS DESC
limit 5;

-- 16) TOP 5 State In profits
select State as State_Names, sum(Operating_Profit) as PROFITS
from adidassales
group by State
order by PROFITS DESC
limit 5;

-- 17) TOP 5 State In Units Sold
select State as State_Names, sum(Units_Sold) as UNITS_SOLD
from adidassales
group by State
order by UNITS_SOLD DESC
limit 5;

-- 18) TOP 5 State In Sales
select State as State_Names, sum(Total_Sales) as SALES
from adidassales
group by State
order by SALES DESC
limit 5;

-- 19) LEAST 5 States In Sales
select State as State_Names, sum(Total_Sales) as SALES
from adidassales
group by State
order by SALES
limit 5;

-- 20) LEAST 5 States In Profits
select State as State_Names, sum(Operating_Profit) as PROFITS
from adidassales
group by State
order by PROFITS
limit 5;

-- 21) LEAST 5 States In Units Sold
select State as State_Names, sum(Units_Sold) as UNITS
from adidassales
group by State
order by UNITS
limit 5;

-- 22) Product wise units
select Product, sum(Units_Sold) as Products_Sold
from adidassales
group by Product;

-- 23) PROFIT PERCENTAGE OF EACH SALES METHOD
-- A) ONLINE
select
((select sum(Operating_Profit) 
 from adidassales
 where Sales_Method = 'Online') / sum(Operating_Profit) * 100) as Online_Profit_Percentage
 from adidassales;
 -- B) IN-STORE
select
((select sum(Operating_Profit) 
  from adidassales
  where Sales_Method = 'In-store') / sum(Operating_Profit) * 100) as Instore_Profit_Percentage
from adidassales;
-- C) OUTLETS
select
((select sum(Operating_Profit) 
  from adidassales
  where Sales_Method = 'Outlet') / sum(Operating_Profit) * 100) as Outlet_Profit_Percentage
from adidassales;

-- 24) SALES PERCENTAGE OF EACH SALES METHOD
-- A) ONLINE
select
((select sum(Total_Sales) 
  from adidassales
  where Sales_Method = 'Online') / sum(Total_Sales) * 100) as Online_Sales_Percentage
from adidassales;
-- B) IN-STORE
select
((select sum(Total_Sales) 
  from adidassales
  where Sales_Method = 'In-store') / sum(Total_Sales) * 100) as In_Store_Sales_Percentage
from adidassales;
-- C) OUTLETS
select
((select sum(Total_Sales) 
  from adidassales
  where Sales_Method = 'Outlet') / sum(Total_Sales) * 100) as Outlet_Sales_Percentage
from adidassales;

-- 25) GENDER WISE SALES PERCENTAGE
-- A) WOMEN
select
((select sum(Total_Sales) 
  from adidassales
  where Product in ("Women's Street Footwear","Women's Athletic Footwear","Women's Apparel")) / sum(Total_Sales) * 100) as Women_Sales_Percentage
from adidassales;
-- B) MEN
select
((select sum(Total_Sales) 
  from adidassales
  where Product in ("Men's Street Footwear","Men's Athletic Footwear","Men's Apparel")) / sum(Total_Sales) * 100) as Men_Sales_Percentage
from adidassales;

-- 26) GENDER WISE PROFIT PERCENTAGE
-- A) WOMEN
select
((select sum(Operating_Profit) 
  from adidassales
  where Product in ("Women's Street Footwear","Women's Athletic Footwear","Women's Apparel")) / sum(Operating_Profit) * 100) as Women_Profit_Percentage
from adidassales;
-- B) MEN
select
((select sum(Operating_Profit) 
  from adidassales
  where Product in ("Men's Street Footwear","Men's Athletic Footwear","Men's Apparel")) / sum(Operating_Profit) * 100) as Men_Profit_Percentage
from adidassales;



























 
    