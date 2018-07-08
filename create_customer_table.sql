drop table customer;

create table customer(
    id int NOT NULL AUTO_INCREMENT, 
    
    username varchar(255) NOT NULL,
    password varchar(128) NOT NULL,
    email_address varchar(255) NOT NULL,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    phone varchar(20) NOT NULL,
    server_url varchar(1024) NOT NULL,

    PRIMARY KEY (id)
);

describe customer;

insert into customer(username, password, email_address, first_name, last_name, phone, server_url) values (
    'wcc17', 
    '724745c864711250d2f9ab6290b4f7643473742fb0e2506443842307c7ac43f7',
    'christian.curry17@gmail.com',
    'William',
    'Curry',
    '859-613-1162',
    'www.github.com'
);

insert into customer(username, password, email_address, first_name, last_name, phone, server_url) values (
    'a_dummy',
    '1f11f5bbe023023336ded48ef2db7b2e3ca7118658231485af52d49008b132e1',
    'dummy_email@gmail.com',
    'Test',
    'User',
    '1-555-555-5555',
    'www.google.com'
);

select * from customer;

/**
notes:
for storing password hashes:
--https://stackoverflow.com/questions/247304/what-data-type-to-use-for-hashed-password-field-and-what-length

TODO regarding server_url:
will likely need to change this, not sure what URLs will look like yet
**/