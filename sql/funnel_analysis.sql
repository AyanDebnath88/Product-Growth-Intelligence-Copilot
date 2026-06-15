select * from marketing_qual
limit 5;

select * from closed_deals
limit 5;

-- how many leads entered the funnel 
select count(*) as total_leads
from marketing_qual;
-- 8000

-- how many leads converted to closed deals
select count(*) as total_closed_deals
from closed_deals;
--842

-- checking the join on mql_id
select * from marketing_qual as mql
left join closed_deals AS cd on mql.mql_id = cd.mql_id
limit 5;

-- Source of leads
select  
    origin,
    count(*) as total_leads
from marketing_qual
group by origin 
order by total_leads desc
limit 10;


/* origin	total_leads
organic_search	2296
paid_search	1586
social	1350
unknown	1099
direct_traffic	499
email	493
referral	284
other	150
display	118
other_publicities	65 */

-- Customer Conversion by Channel 
select 
    m.origin,
    count(m.mql_id) as total_leads,
    count(cd.mql_id) as converted_leads,
    round((count(cd.mql_id) * 100.0 / count(m.mql_id)), 2) as conversion_rate
from marketing_qual as m
left join closed_deals as cd on m.mql_id = cd.mql_id
group by m.origin
order by conversion_rate desc
limit 10;

/* origin	total_leads	converted_leads	conversion_rate
NULL	60	14	23.33
unknown	1099	179	16.29
paid_search	1586	195	12.3
organic_search	2296	271	11.8
direct_traffic	499	56	11.22
referral	284	24	8.45
social	1350	75	5.56
display	118	6	5.08
other_publicities	65	3	4.62
email	493	15	3.04 */

-- business segment analysis 
select business_segment,
    count(*) as deals
from closed_deals
group by business_segment
order by deals desc
limit 10;
/* business_segment	deals
home_decor	105
health_beauty	93
car_accessories	77
household_utilities	71
construction_tools_house_garden	69
audio_video_electronics	64
computers	34
pet	30
food_supplement	28
food_drink	26 */

-- Lead Type Performance 
select lead_type,
    count(*) as deals
from closed_deals
group by lead_type  
order by deals desc
limit 10;
   /* lead_type	deals
online_medium	332
online_big	126
industry	123
offline	104
online_small	77
online_beginner	57
online_top	14
NULL	6
other	3*/

