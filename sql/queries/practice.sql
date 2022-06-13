select clients."name", address, unit, zip, routes."name"
from clients
inner join routes on clients.route_id = routes.id and 
("status" = 'Active' or "status" = 'Urgent') and
routes."day" = 'B'