select f.FLIGHT_NUM, f.DEPART_TIME, f.DURATION, r.flight_no, r.travel_date, r.number_of_seats from FLTRESV f,
XMLTABLE('$r/fltresv/request' passing f.REQUEST as "r" columns 
flight_no integer path 'reservation/flightno', travel_date date path 'reservation/traveldate', 
number_of_seats integer path 'reservation/numberofseats', request_date date path 'requestdate') r
where r.request_date<TO_DATE('2013-10-10','YYYY-MM-DD');