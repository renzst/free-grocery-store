CREATE TABLE notes (
    id serial primary key,
    client_id int,
    FOREIGN KEY (client_id) REFERENCES clients,
    created_on timestamp,
    note text
)