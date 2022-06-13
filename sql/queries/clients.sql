CREATE TABLE clients (
    id serial primary key,
    request_id int REFERENCES requests,
    "status" varchar(63) not null,
    messages varchar(255),
    "name" varchar(255),
    phone varchar(10) not null,
    email varchar(63),
    "address" varchar(255) not null,
    unit varchar(255),
    zip varchar(5) not null,
    lat real,
    lon real,
    household int not null CHECK (household >= 1),
    restrictions varchar(255),
    driver_note varchar(255),
    preferences varchar(255),
    route_id int,
    route_order int
)

ALTER TABLE clients
ADD FOREIGN KEY (route_id) REFERENCES routes