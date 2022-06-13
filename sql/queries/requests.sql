create table requests (
    id serial primary key,
    validity varchar(255),
    created timestamp not NULL,
    callback varchar(255),
    lang varchar(128)
)