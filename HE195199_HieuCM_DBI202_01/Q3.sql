

select location_id, country_id , street_address, city from locations
where country_id in ('CA', 'US')
order by location_id desc