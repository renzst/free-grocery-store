CREATE TABLE demographics (
    id serial PRIMARY KEY,
    client_id int,
    FOREIGN KEY (client_id) REFERENCES clients,
    created_on timestamp,
    race VARCHAR(63),
    latino boolean,
    mobility VARCHAR(10),
    newborns int DEFAULT 0,
    children int DEFAULT 0,
    teens int DEFAULT 0,
    elders int DEFAULT 0
)

CREATE TABLE foodsec (
    id serial PRIMARY KEY,
    client_id int,
    FOREIGN KEY (client_id) REFERENCES clients,
    created_on timestamp,
    "type" VARCHAR(63),
    q1 varchar(31),
    q2 varchar(31),
    q3 varchar(31),
    q4 varchar(31)
)