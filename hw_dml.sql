INSERT INTO customer(
    first_name,
    last_name,
    member,
    phone
)
 VALUES(
    'Charlie',
    'Rodriguez',
    true,
    '8133339999'
),(
    'Brandt',
    'Carlson',
    false,
    '4443332222'

),(
    'Callie',
    'Grabel',
    true,
    '7778889999'
);

INSERT INTO movie(
    m_name,
    m_length
)
VALUES (
    'Titanic',
    '3 Hours'
),(
    'Avatar',
    '2 Hours'
);

INSERT INTO ticket(
    price,
    m_time
)
VALUES(
    15.00,
    '7:30pm'
),(
    14.00,
    '9:30pm'
);

INSERT INTO concession(
    price,
    c_size,
    food
)
 VALUES(
    8.00,
    'small',
    'nachos'
 ),(
    3.00,
    'large',
    'coke'
 )


INSERT INTO food_order(
    concession_id,
    customer_id
)
VALUES(
    1,
    3
),(
    2,
    1
);

INSERT INTO ticket_order(
    ticket_id,
    customer_id,
    movie_id
)
 VALUES(
    1,
    3,
    2
 ),(
    2,
    1,
    1
 );