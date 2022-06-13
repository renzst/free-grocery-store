CREATE TABLE deliveries (
    id serial primary key,
    client_id int,
    status varchar(63),
    delivered_at timestamp,
    assigned_to int,
    route_id int,
    FOREIGN KEY (route_id) REFERENCES routes,
    foreign key (client_id) references clients