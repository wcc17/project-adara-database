drop table device;

create table device(
    id int NOT NULL AUTO_INCREMENT, 
    customer_id int NOT NULL,
    name varchar(255) NOT NULL,
    type int NOT NULL,

    PRIMARY KEY (id),
    INDEX (customer_id),

    FOREIGN KEY (customer_id)
        REFERENCES customer(id)
        ON DELETE CASCADE
);

describe device;

insert into device(customer_id, name, type) values(1, "Camera 1", 1);
insert into device(customer_id, name, type) values(1, "Camera 2", 1);
insert into device(customer_id, name, type) values(1, "Camera 3", 1);
insert into device(customer_id, name, type) values(1, "Microphone 1", 2);
insert into device(customer_id, name, type) values(1, "Microphone 2", 2);
insert into device(customer_id, name, type) values(1, "Microphone 3", 2);
insert into device(customer_id, name, type) values(1, "Sensor 1", 3);
insert into device(customer_id, name, type) values(1, "Sensor 2", 3);
insert into device(customer_id, name, type) values(1, "Lock 1", 4);
insert into device(customer_id, name, type) values(1, "Lock 2", 4);

insert into device(customer_id, name, type) values(2, "Camera 1", 1);
insert into device(customer_id, name, type) values(2, "Camera 2", 1);
insert into device(customer_id, name, type) values(2, "Camera 3", 1);
insert into device(customer_id, name, type) values(2, "Microphone 1", 2);
insert into device(customer_id, name, type) values(2, "Microphone 2", 2);
insert into device(customer_id, name, type) values(2, "Microphone 3", 2);
insert into device(customer_id, name, type) values(2, "Sensor 1", 3);
insert into device(customer_id, name, type) values(2, "Sensor 2", 3);
insert into device(customer_id, name, type) values(2, "Lock 1", 4);
insert into device(customer_id, name, type) values(2, "Lock 2", 4);

select * from device;

/**
Notes:

TODO: DEVICE NAME SHOULD BE UNIQUE FOR A SPECIFIC CUSTOMER

DeviceType:
public static final int CAMERA = 1;
public static final int MICROPHONE = 2;
public static final int SENSOR = 3;
public static final int LOCK = 4;

--regarding device id:
Right now I'm thinking when we add a device to the customer server, we'll make a call to the company server to add
a device connected to that customer. That way the auto_incremenet can be used for the device id and then we can just
use that device id on the customer server

device shouldn't need its own URL. once we make a request to the customer server (via the URL in the customer table),
we will make a request by customerId, deviceId to the customer server and it will return the correct direct URL to that
device

--regarding index on customer_id:
i think this is the right thing to do. we will be getting list of devices for a single customer mostly, not looking
for a device by its id on its own


--regarding on delete cascade for customer_id foreign key
TODO: need to look into whether I actually want this or not. It doesn't make sense to keep devices around if customer is
deleted, but I also don't like things to get deleted without my explicit say so, but again idk if it matters/if i understand correctly
**/