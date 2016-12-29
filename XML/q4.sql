select f.FLIGHT_NUM, r.agent_name, r.phone from FLTRESV f, XMLTABLE('$r/fltresv/request' passing f.REQUEST as "r"
columns agent_name varchar2(50) path 'agentname', phone varchar2(50) path 'contactperson/phone') r
where f.ORIGIN='Los Angeles';