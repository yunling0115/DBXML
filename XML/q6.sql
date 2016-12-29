select sum(r.number_of_seats), r.travel_date from FLTRESV f, XMLTABLE('$r/fltresv/request' passing f.REQUEST as "r"
columns number_of_seats integer path 'reservation/numberofseats', travel_date date path 'reservation/traveldate') r 
where f.FLIGHT_NUM=215 group by r.travel_date;