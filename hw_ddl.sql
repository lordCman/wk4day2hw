CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    member BOOLEAN,
    phone VARCHAR(10)
);

SELECT * FROM customer;

CREATE TABLE ticket (
    ticket_id SERIAL PRIMARY KEY,
    price NUMERIC(8,2),
    m_time VARCHAR(10)
);

CREATE TABLE movie (
    movie_id SERIAL PRIMARY KEY,
    m_name VARCHAR(20),
    m_length VARCHAR(7)
);

CREATE TABLE concession (
    concession_id SERIAL PRIMARY KEY,
    price NUMERIC(8,2),
    c_size VARCHAR(10)
);

CREATE TABLE food_order (
    food_order_id SERIAL PRIMARY KEY,
    concession_id INTEGER,
    customer_id INTEGER,

    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

ALTER TABLE food_order
ADD FOREIGN KEY(concession_id) REFERENCES concession(concession_id);

CREATE TABLE ticket_order (
    ticket_order_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    ticket_id INTEGER,
    movie_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

ALTER TABLE concession
ADD food VARCHAR(15);